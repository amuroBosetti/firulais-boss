extends Node2D
class_name MonitorCamera

export (float) var MOVEMENT_SPEED:float = 0.5
export (float) var MOVEMENT_DEGREE:float = 45

onready var raycast: RayCast2D = $RayCast2D
onready var camera_sprite: AnimatedSprite = $Camera
onready var sfx:AudioStreamPlayer2D = $AudioStreamPlayer2D

var camera_degrees:float
var degrees_counter:float = 0
var max_degree:float
var min_degree:float
var direction:int = 1
var active = true
var moving = false

var target = null

func _ready():
	max_degree = rotation_degrees + MOVEMENT_DEGREE
	min_degree = rotation_degrees - MOVEMENT_DEGREE

func _process(delta):
	if active:
		_apply_raycast()
		_apply_rotation()
	_play_sfx()
	
func _apply_raycast():
	if target != null:
		raycast.set_cast_to(to_local(target.global_position))
		raycast.enabled = true
		if raycast.is_colliding() && raycast.get_collider() == target:
			target.respawn_player()
	
func _apply_rotation():

	degrees_counter += direction * (MOVEMENT_SPEED)
		
	if degrees_counter > -max_degree and degrees_counter < max_degree:
		camera_degrees = degrees_counter
		moving = true
	
	if degrees_counter <= min_degree or degrees_counter >= max_degree:
		moving = false
	if degrees_counter < min_degree - 20 or degrees_counter > max_degree + 20:
		direction *= -1
	
	if moving: 
		rotation_degrees = camera_degrees

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
	else: 
		camera_sprite.animation = "inactive"
	$FieldOfView/Sprite.set_deferred("visible", active)

func _on_Area2D_body_entered(body):
	if body is Player and target == null:
		target = body
		raycast.enabled = true
		
func _on_Area2D_body_exited(body):
	if target == body:
		target = null
		raycast.enabled = false	
