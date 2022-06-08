extends Area2D
tool

signal snapCamera

export (float) var ZOOM:float = 1
export (Vector2) var SCALE:Vector2 = Vector2(1,1) setget _set_scale
export (Vector2) var CAMERA_POSITION = Vector2(0,0) setget _set_camera

onready var camera:Camera2D = get_node("../Camera")
onready var camera_offset:Vector2 = get_node("../Camera").offset

var original_zoom:Vector2

func _on_SnapCamera_body_entered(body):
	if body is Player:
		original_zoom = camera.zoom
		emit_signal("snapCamera", 
					$CameraPosition.global_position - camera_offset,
					Vector2(ZOOM,ZOOM), 
					false)

func _on_SnapCamera_body_exited(body):
	if body is Player:
		emit_signal("snapCamera", 
					body.position, 
					original_zoom,
					true)

func _set_scale(scale_vector:Vector2):
	SCALE = scale_vector
	$CollisionShape2D.scale = scale_vector
	if Engine.editor_hint:
		$CollisionShape2D.scale = scale_vector

func _set_camera(camera_vector:Vector2):
	CAMERA_POSITION = camera_vector
	$CameraPosition.position = camera_vector
	if Engine.editor_hint:
		$CameraPosition.position = camera_vector
		
