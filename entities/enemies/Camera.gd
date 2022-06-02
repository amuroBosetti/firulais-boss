extends Node2D
class_name MonitorCamera

export (float) var MOVEMENT_SPEED:float = 0.5
export (float) var MOVEMENT_DEGREE:float = 45

var camera_rotation_degrees:float
var rotation_degrees_count:float = 0
var max_degree_movement:float
var min_degree_movement:float
var direction:int = 1
var active = true
var moving = false
var max_animation_duration = 2

var target = null
onready var raycast : RayCast2D = $RayCast2D
onready var camera_sprite : AnimatedSprite = $Camera
onready var sfx:AudioStreamPlayer2D = $AudioStreamPlayer2D
onready var tween : Tween = $Tween

func _ready():
	camera_rotation_degrees = rotation_degrees
	max_degree_movement = camera_rotation_degrees + MOVEMENT_DEGREE
	min_degree_movement = camera_rotation_degrees - MOVEMENT_DEGREE

func _process(delta):
	if active && target != null:
		raycast.set_cast_to(to_local(target.global_position))
		raycast.enabled = true
		if raycast.is_colliding() && raycast.get_collider() == target:
			target.respawn_player()
	_play_sfx()

func _on_Area2D_body_entered(body):
	if body is Player and target == null:
		target = body
		raycast.enabled = true
		
func _on_Area2D_body_exited(body):
	if target == body:
		target = null
		raycast.enabled = false	

func _play_sfx():
	if active and moving:
		if not sfx.playing:
			sfx.play()
	else:
		if sfx.playing:
			sfx.stop()

func _interact():
	active = !active
	if active:
		camera_sprite.animation = "active"
		resume_animation()
	else:
		camera_sprite.animation = "inactive"
		tween.stop_all()
		tween.remove(self, "rotation_degrees")
	$FieldOfView/Sprite.set_deferred("visible", active)

func _on_Tween_tween_completed(object, key):
	print(key)
	yield(get_tree().create_timer(1), "timeout")
	direction = direction * -1
	animate_movement(direction)

func resume_animation():
	animate_movement(direction)

func animate_movement(direction):
	var bound = max_degree_movement if direction == 1 else min_degree_movement
	var seconds = abs((abs(bound - self.rotation_degrees) * max_animation_duration) / (max_degree_movement - min_degree_movement))
	tween.interpolate_property(self, "rotation_degrees", self.rotation_degrees, bound, seconds)
	tween.start()
