extends KinematicBody2D
class_name Player

signal game_finished(stolen_picture, player)

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
onready var jump_down_state:Node = $StateMachine/JumpDown
onready var sfx:AudioStreamPlayer2D = $SFX
onready var camera_manager = get_node(CAMERA_MANAGER)

var velocity:Vector2 = Vector2.ZERO
var move_direction:int = 0
var camera_movement:float = 0
var target = null
var caught = false
var hanging_position:Vector2
var hanging_direction:int
var current_stealing_picture = null

func _ready():
	caught = false
	state_machine.set_parent(self)
	hidden_sprite.set_deferred("visible", hidden)
	normal_sprite.set_deferred("visible", !hidden) 

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
	
func _caught():
	if !caught:
		caught = true
		state_machine._change_state("caught")
		camera_manager.fade_out()	
	
func _respawn():
	GameStats.reset()
	current_stealing_picture = null
	camera_manager.fade_in()
	position = spawn_position
	yield(get_tree().create_timer(0.1), "timeout")
	caught = false

func _on_CameraFade_fade_in_completed():
	state_machine._change_state("idle")
	
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
	hanging_position = $Position2D.global_position

func _input(event):
	if target != null and target.has_method('_interact'):
		if event.is_action_pressed("interact"):
			target._interact()

func _hang(y_ledge:int, direction:int):
	if current_state() == jump_down_state:
		hanging_direction = direction
		global_position.y = y_ledge + 40 
		state_machine._change_state("hang")

func play_animation(animation_name:String):
	animation_player.play(animation_name)

func current_state():
	return state_machine.current_state

func _on_interactable(body):
	target = body

func _on_stealing(picture):
	current_stealing_picture = picture
	state_machine._change_state("stealing")	
	
func _on_stolen(is_final_goal):
	var stolen_picture = current_stealing_picture
	current_stealing_picture = null
	state_machine._change_state("idle")
	if is_final_goal:
		emit_signal("game_finished", stolen_picture, self)
