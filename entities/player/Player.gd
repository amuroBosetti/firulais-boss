extends KinematicBody2D
class_name Player

# Textures
export (Texture) var visible_texture
export (Texture) var hidden_texture

export (float) var ACCELERATION:float = 20.0
export (float) var H_SPEED_LIMIT:float = 400.0
export (float) var FRICTION_WEIGHT:float = 0.3
export (float) var JUMP_SPEED:float = 500.0 
export (float) var GRAVITY:float = 30

onready var spawn_position = self.global_position
onready var state_machine = $StateMachine
onready var player_camera = $Position2D
onready var player_sprite : Sprite = $Sprite

var velocity:Vector2 = Vector2.ZERO
var move_direction:int = 0
var camera_movement = 0
var hidden : bool = false 

func make_hidden():
	if !hidden:
		set_collision_layer_bit(0, false)
		player_sprite.set_texture(hidden_texture)
		hidden = true
			
func make_visible():
	if hidden:
		set_collision_layer_bit(0, true)
		player_sprite.set_texture(visible_texture)
		hidden = false
		
func _ready():
	state_machine.set_parent(self)
	player_sprite.set_texture(visible_texture)
	
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