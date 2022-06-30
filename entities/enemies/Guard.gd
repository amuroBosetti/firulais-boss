extends KinematicBody2D
class_name Guard
tool

signal player_being_detected(detection_time)
signal player_got_away

export (float) var SPEED = 90
export (float) var GRAVITY:float = 60
export (float) var WAIT_TIME:float = 4
export (String, "Left", "Right") var DIRECTION setget _set_direction
export (float, -2500, 0) var LEFT_LIMIT_X  setget set_limit_l
export (float, 0, 2500) var RIGHT_LIMIT_X  setget set_limit_r

onready var state_machine = $StateMachine
onready var idle_timer:Timer = $StateMachine/Idle/IdleTimer
onready var animation_player:AnimationPlayer = $AnimationPlayer
onready var tween:Tween = $Tween
onready var light:Light2D = $Body/HeadLight
onready var audio_player = $AudioStreamPlayer2D
onready var body_ = $Body
onready var turn_around_lights = [
	$Body/TurnAroundLight1,
	$Body/TurnAroundLight2,
	$Body/TurnAroundLight3
]

var raycast:RayCast2D
var target = null
var velocity:Vector2 = Vector2()
var direction:int
var initial_light_position:float = -78.255
var limit_left_x:float
var limit_right_x:float

func _ready():
	raycast = $RayCast2D
	idle_timer.wait_time = WAIT_TIME
	state_machine.set_parent(self)
	if DIRECTION == "Left":
		direction = -1
		limit_left_x = $LimitLeft.global_position.x
		limit_right_x = $LimitRight.global_position.x
	else:
		direction = 1
		limit_left_x = $LimitRight.global_position.x
		limit_right_x = $LimitLeft.global_position.x

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
	if body is Player:
		target = body
		state_machine._change_state("detect_player")
		
func _on_Area2D_body_exited(body):
	if body is Player:
		target = null
		_player_got_away()

func _set_direction(dir:String):
	DIRECTION = dir
	if dir == "Right":
		if Engine.editor_hint:
			scale.x = abs(scale.x) * -1
	else:
		if Engine.editor_hint:
			scale.x = abs(scale.x)

func _sync_lights():
	if not Engine.editor_hint:
		for each in turn_around_lights:
			each.turn(body_.frame)

func set_limit_l(pos_x:float):
	LEFT_LIMIT_X = pos_x
	if get_node_or_null("./LimitLeft") != null:
		$LimitLeft.position.x = pos_x

func set_limit_r(pos_x:float):
	RIGHT_LIMIT_X = pos_x
	if get_node_or_null("./LimitRight") != null:
		$LimitRight.position.x = pos_x
		
func catch_player():
	target._caught()
	
func detect_player():
	_play_animation("detecting")
	emit_signal("player_being_detected", $StateMachine/DetectPlayer/DetectPlayerTimer.wait_time)
	
func _player_got_away():
	_play_animation("RESET")
	emit_signal("player_got_away")
	
func _has_to_turn():
	return global_position.x >= limit_right_x \
	  	or global_position.x <= limit_left_x \
		or is_on_wall()
