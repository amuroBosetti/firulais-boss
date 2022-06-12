extends KinematicBody2D
class_name Guard

export (float) var SPEED = 90
export (float) var GRAVITY:float = 60
export (float) var WAIT_TIME:float = 4

onready var state_machine = $StateMachine
onready var idle_timer:Timer = $StateMachine/Idle/IdleTimer
onready var animation_player:AnimationPlayer = $AnimationPlayer
onready var tween:Tween = $Tween

var raycast:RayCast2D
var target = null
var velocity:Vector2 = Vector2()
var direction:int = -1

func _ready():
	raycast = $RayCast2D
	idle_timer.wait_time =  WAIT_TIME
	state_machine.set_parent(self)
	
func _process(delta):
	if target != null:
		raycast.set_cast_to(to_local(target.global_position))
		raycast.enabled = true
		if raycast.is_colliding() && raycast.get_collider() == target:
			target._caught()

func _apply_movement():
	velocity.x = SPEED * direction
	velocity.y += GRAVITY
	velocity = move_and_slide(velocity, Vector2.UP)
	
func _play_animation(animation_name):
	if animation_player.has_animation(animation_name):
		animation_player.play(animation_name)
		
func play_idle_animation():
	tween.interpolate_property($Body, "frame", 0, 4, WAIT_TIME)
	tween.start()

func _on_Area2D_body_entered(body):
	if body is Player and target == null:
		target = body
		
func _on_Area2D_body_exited(body):
	if target == body:
		target = null
		raycast.enabled = false
