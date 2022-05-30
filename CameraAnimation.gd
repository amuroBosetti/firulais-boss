extends Node2D

onready var camera : Camera2D = $Camera
onready var player : Player = get_parent().get_node('Player')
onready var tween : Tween = $Tween

var attach_camera_to_player : bool = true

func _process(delta):
	if attach_camera_to_player:
		camera.set_position(player.get_position())

func _set_camera_on(position_, zoom, followPlayer):
	tween.interpolate_property(camera, "zoom", camera.zoom, zoom, 1, Tween.TRANS_LINEAR)
	tween.interpolate_property(camera, "position", camera.position, position_, 1)
	tween.start()
	attach_camera_to_player = followPlayer

func _on_SnapCamera_snapCamera(position_, zoom, followPlayer):
	_set_camera_on(position_, zoom, followPlayer)
