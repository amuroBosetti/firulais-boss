extends KinematicBody2D
class_name Guard

export (float) var SPEED = 90
export (float) var GRAVITY:float = 60

onready var state_machine = $StateMachine
onready var spawn_position = global_position

var raycast:RayCast2D
var target = null
var velocity:Vector2 = Vector2()
var direction:int = -1

func _ready():
	raycast = $RayCast2D
	state_machine.set_parent(self)
	
func _process(delta):
	if target != null:
		raycast.set_cast_to(to_local(target.global_position))
		raycast.enabled = true
		if raycast.is_colliding() && raycast.get_collider() == target:
			target.respawn_player()

func _apply_movement():
	velocity.x = SPEED * direction
	velocity.y += GRAVITY
	move_and_slide(velocity, Vector2.UP)

func _on_Area2D_body_entered(body):
	if body is Player and target == null:
		target = body
		
func _on_Area2D_body_exited(body):
	if target == body:
		target = null
		raycast.enabled = false
