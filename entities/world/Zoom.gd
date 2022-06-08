extends Area2D

export (float) var ZOOM:float = 1

onready var camera:Camera2D = get_node("../Camera")
onready var tween:Tween = $Tween

func _on_Zoom_body_entered(body):
	if body is Player:
		tween.interpolate_property(camera, "zoom", camera.zoom, Vector2(ZOOM,ZOOM), 1, Tween.TRANS_LINEAR)
		tween.start()
