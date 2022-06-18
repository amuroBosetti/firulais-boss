extends Node2D
class_name MonitorCamera

export (float) var MOVEMENT_SPEED:float = 0.5
export (float) var MOVEMENT_DEGREE:float = 45
export (float) var WAIT_TIME:float = 1

var camera_rotation_degrees:float
var rotation_degrees_count:float = 0
var max_degree_movement:float
var min_degree_movement:float
var direction:int = 1
var active = true
var moving = false
var waiting = false
var max_animation_duration = 2
var target = null

onready var raycast : RayCast2D = $RayCast2D
onready var camera_sprite : AnimatedSprite = $Camera
onready var sfx:AudioStreamPlayer2D = $Rolling
onready var sfx_switch:AudioStreamPlayer = $Switch
onready var tween : Tween = $Tween
onready var shadow: Sprite = $FieldOfView/Sprite

func _ready():
	camera_rotation_degrees = rotation_degrees
	max_degree_movement = camera_rotation_degrees + MOVEMENT_DEGREE
	min_degree_movement = camera_rotation_degrees - MOVEMENT_DEGREE
	rotation_degrees = min_degree_movement
	sfx_switch.stream.loop = false
	_animate_movement(direction)

func _process(_delta):
	_apply_raycast()
	_play_sfx()

func _apply_raycast():
	if active && target != null:
		raycast.set_cast_to(to_local(target.global_position))
		raycast.enabled = true
		if raycast.is_colliding() && raycast.get_collider() == target:
			target._caught()

func _play_sfx():
	if active and moving:
		if not sfx.playing:
			sfx.play()
	else:
		if sfx.playing:
			sfx.stop()

func _interact():
	active = !active
	sfx_switch.play()
	if active:
		camera_sprite.animation = "active"
		_animate_movement(direction)
	else:
		camera_sprite.animation = "inactive"
		tween.stop_all()
		tween.remove(self, "rotation_degrees")
	shadow.set_deferred("visible", active)

func _animate_movement(_direction):
	if not tween.is_active() and waiting == false:
		moving = true
		var bound = max_degree_movement if _direction == 1 else min_degree_movement
		var seconds = abs((abs(bound - rotation_degrees) * max_animation_duration) / (max_degree_movement - min_degree_movement))
		tween.interpolate_property(self, "rotation_degrees", rotation_degrees, bound, seconds)
		tween.start()

func _on_Tween_tween_completed(_object, _key):
	moving = false
	direction = direction * -1
	waiting = true
	yield(get_tree().create_timer(WAIT_TIME), "timeout")
	waiting = false
	if active:
		_animate_movement(direction)

func _on_Area2D_body_entered(body):
	if body is Player and target == null:
		target = body
		raycast.enabled = true

func _on_Area2D_body_exited(body):
	if target == body:
		target = null
		raycast.enabled = false
