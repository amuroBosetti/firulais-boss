extends KinematicBody2D
class_name Player

export (float) var ACCELERATION:float = 20.0
export (float) var H_SPEED_LIMIT:float = 400.0
export (float) var FRICTION_WEIGHT:float = 0.3
export (float) var JUMP_SPEED:float = 500.0 
export (float) var GRAVITY:float = 30
export (NodePath) var CAMERA_MANAGER:NodePath

onready var spawn_position:Vector2 = global_position
onready var state_machine:Node = $StateMachine
onready var normal_sprite:Sprite = $Normal
onready var hidden_sprite:Sprite = $Hidden 
onready var hidden:bool = false 
onready var animation_player:AnimationPlayer = $AnimationPlayer
onready var caught_state:Node = $StateMachine/Caught
onready var camera_manager = get_node(CAMERA_MANAGER)

var velocity:Vector2 = Vector2.ZERO
var move_direction:int = 0
var camera_movement:float = 0
var target = null
var caught = false

func make_hidden():
	if !hidden:
		set_collision_layer_bit(0, false)
		hidden = true
		hidden_sprite.set_deferred("visible", hidden)
		normal_sprite.set_deferred("visible", !hidden) 
		
func make_visible():
	if hidden:
		set_collision_layer_bit(0, true)
		hidden = false
		hidden_sprite.set_deferred("visible", hidden)
		normal_sprite.set_deferred("visible", !hidden) 
		
func _ready():
	caught = false
	state_machine.set_parent(self)
	hidden_sprite.set_deferred("visible", hidden)
	normal_sprite.set_deferred("visible", !hidden) 
	
func _caught():
	if !caught:
		caught = true
		state_machine._change_state("caught")
		camera_manager.fade_out()
	
func _respawn():
	camera_manager.fade_in()
	position = spawn_position
	yield(get_tree().create_timer(0.1), "timeout")
	caught = false

func _on_CameraFade_fade_in_completed():
	current_state()._exit()
	
func _apply_movement():
	velocity.y += GRAVITY
	velocity = move_and_slide(velocity, Vector2.UP)

func _handle_deacceleration():
	velocity.x = lerp(velocity.x, 0, FRICTION_WEIGHT) if abs(velocity.x) > 1 else 0

func _handle_move_input():
	move_direction = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	if move_direction != 0:
		velocity.x = clamp(velocity.x + (move_direction * ACCELERATION), -H_SPEED_LIMIT, H_SPEED_LIMIT)
		$Hidden.flip_h = move_direction == -1
		$Normal.flip_h = move_direction == -1

func _physics_process(_delta):
	if target != null and target.has_method('_interact'):
		if Input.is_action_just_pressed("interact"):
			target._interact()
	if Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene()

func _on_CameraSwitch_interactable(body):
	target = body
	
func play_animation(animation_name:String):
	animation_player.play(animation_name)

func current_state():
	return state_machine.current_state

