extends KinematicBody2D
class_name Guard
tool

export (float) var SPEED = 90
export (float) var GRAVITY:float = 60
export (float) var WAIT_TIME:float = 4
export (String, "Right", "Left") var DIRECTION setget _set_direction

onready var state_machine = $StateMachine
onready var idle_timer:Timer = $StateMachine/Idle/IdleTimer
onready var animation_player:AnimationPlayer = $AnimationPlayer
onready var tween:Tween = $Tween
onready var light:Light2D = $Body/Light2D
onready var audio_player = $AudioStreamPlayer2D

var raycast:RayCast2D
var target = null
var velocity:Vector2 = Vector2()
var direction:int
var initial_light_position:float = -78.255

func _ready():
	raycast = $RayCast2D
	idle_timer.wait_time =  WAIT_TIME
	#audio_player.stream.loop = false
	state_machine.set_parent(self)
	if DIRECTION == "Right":
		direction = 1
	else:
		direction = -1
	
func _process(_delta):
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
		
func _stop_walk_animation():
	animation_player.stop()
	light.position.y = initial_light_position

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

func _set_direction(dir:String):
	DIRECTION = dir
	if dir == "Right":
		if Engine.editor_hint:
			scale.x = abs(scale.x) * -1
	else:
		if Engine.editor_hint:
			scale.x = abs(scale.x)
			
