extends KinematicBody2D
class_name Player

export (float) var ACCELERATION:float = 20.0
export (float) var H_SPEED_LIMIT:float = 600.0
export (float) var FRICTION_WEIGHT:float = 0.1
export (float) var JUMP_SPEED:float = 500.0 
export (float) var GRAVITY:float = 15

onready var spawn_position = self.global_position
onready var state_machine = $StateMachine

var velocity:Vector2 = Vector2.ZERO
var move_direction:int = 0

func _ready():
	state_machine.set_parent(self)
	
func respawn_player():
	self.position = spawn_position
	
func _apply_movement():
	velocity.y += GRAVITY
	move_and_slide(velocity, Vector2.UP)

func _handle_deacceleration():
	velocity.x = lerp(velocity.x, 0, FRICTION_WEIGHT) if abs(velocity.x) > 1 else 0

func _handle_move_input():
	move_direction = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	if move_direction != 0:
		velocity.x = clamp(velocity.x + (move_direction * ACCELERATION), -H_SPEED_LIMIT, H_SPEED_LIMIT)
