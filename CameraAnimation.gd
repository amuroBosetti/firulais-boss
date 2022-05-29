extends Node2D

onready var camera : Camera2D = $Camera
onready var player : Player = get_parent().get_node('Player')
onready var tween : Tween = $Tween

var attach_camera_to_player : bool = true

func _process(delta):
	if attach_camera_to_player:
		camera.set_position(player.get_position())

func _on_CameraLimit_body_entered(body):
	if body is Player:
		tween.interpolate_property(camera, "zoom", camera.zoom, Vector2(1,1), 1, Tween.TRANS_LINEAR)
		tween.interpolate_property(camera, "position", camera.position, player.position, 1)
		tween.start()
		attach_camera_to_player = true

func _on_CameraLimit2_body_entered(body):
	if body is Player:
		tween.interpolate_property(camera, "zoom", camera.zoom, Vector2(1.3,1.3), 1, Tween.TRANS_LINEAR)
		tween.interpolate_property(camera, "position", camera.position, $CameraLimit2/CameraPosition.position, 1)
		tween.start()
		attach_camera_to_player = false
