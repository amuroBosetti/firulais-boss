extends Node2D

onready var camera : Camera2D = $Camera
onready var player : Player = get_parent().get_node('Player')
onready var tween : Tween = $Tween
onready var attach_camera_to_player : bool = true

func _process(_delta):
	if attach_camera_to_player:
		camera.set_position(player.get_position())

func _initialize():
	camera.current = true

func _set_camera_on(_position, zoom, followPlayer):
	tween.interpolate_property(camera, "zoom", camera.zoom, zoom, 1, Tween.TRANS_LINEAR)
	tween.interpolate_property(camera, "position", camera.position, _position, 1)
	tween.start()
	attach_camera_to_player = followPlayer
	camera.drag_margin_h_enabled = followPlayer
	camera.drag_margin_v_enabled = followPlayer

func _on_SnapCamera_snapCamera(_position, zoom, followPlayer):
	_set_camera_on(_position, zoom, followPlayer)
