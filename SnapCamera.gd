extends Area2D
tool

signal snapCamera

export (Vector2) var ENTRANCE_ZOOM:Vector2 = Vector2(1,1)
export (Vector2) var EXIT_ZOOM:Vector2 = Vector2(1,1)
export (Vector2) var SCALE:Vector2 = Vector2(1,1) setget _set_scale

func _on_SnapCamera_body_entered(body):
	if body is Player:
		emit_signal("snapCamera", $CameraPosition.global_position, ENTRANCE_ZOOM, false)

func _on_SnapCamera_body_exited(body):
	if body is Player:
		emit_signal("snapCamera", body.position, EXIT_ZOOM, true)

func _set_scale(scale_vector):
	SCALE = scale_vector
	$CollisionShape2D.scale = scale_vector
	if Engine.editor_hint:
		$CollisionShape2D.scale = scale_vector
