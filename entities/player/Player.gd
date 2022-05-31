extends KinematicBody2D
class_name Player

export (float) var ACCELERATION:float = 20.0
export (float) var H_SPEED_LIMIT:float = 400.0
export (float) var FRICTION_WEIGHT:float = 0.3
export (float) var JUMP_SPEED:float = 500.0 
export (float) var GRAVITY:float = 30

onready var spawn_position:Vector2 = self.global_position
onready var state_machine:Node = $StateMachine
onready var normal_sprite:Sprite = $Normal
onready var hidden_sprite:Sprite = $Hidden 
onready var hidden:bool = false 
onready var animation_player:AnimationPlayer = $AnimationPlayer

var velocity:Vector2 = Vector2.ZERO
var move_direction:int = 0
var camera_movement:float = 0
var target = null

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
	state_machine.set_parent(self)
	hidden_sprite.set_deferred("visible", hidden)
	normal_sprite.set_deferred("visible", !hidden) 
	
func respawn_player():
	self.position = spawn_position
	
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

func _physics_process(delta):
	if target != null:
		if target.has_method('_interact'):
			if Input.is_action_just_pressed("interact"):
				target._interact()

func _on_CameraSwitch_interactable(body):
	target = body
	
func play_animation(animation_name:String):
	animation_player.play(animation_name)
