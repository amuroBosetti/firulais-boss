extends Node2D

onready var camera : Camera2D = $Camera
onready var player : Player = get_parent().get_node('Player')
onready var tween : Tween = $Tween
onready var attach_camera_to_player : bool = true
onready var fade:Node = $CameraFade
onready var warningFade:ColorRect = $CameraFade/CanvasLayer/ColorRect
onready var final_fade:Node = $FinalCameraFade
onready var music:AudioStreamPlayer = get_parent().get_node('Music')

var zoom_before_detection:Vector2
var position_before_detection:Vector2
var following_player_before_detection:bool

func _process(_delta):
	if attach_camera_to_player:
		camera.set_position(player.get_position())

func _initialize():
	camera.current = true

func _set_camera_on(_position, zoom, followPlayer):
	var tween_speed = 1
	if followPlayer:
		tween_speed = 0.5
	tween.interpolate_property(camera, "zoom", camera.zoom, zoom, 1, Tween.TRANS_LINEAR)
	tween.interpolate_property(camera, "position", camera.position, _position, tween_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
	tween.start()
	attach_camera_to_player = followPlayer
	camera.drag_margin_h_enabled = followPlayer
	camera.drag_margin_v_enabled = followPlayer

func _on_SnapCamera_snapCamera(_position, zoom, followPlayer):
	_set_camera_on(_position, zoom, followPlayer)

func fade_in():
	fade.fade_in()
	
func fade_out():
	fade.fade_out()

#Zoom detection

#func _on_player_being_detected(detection_time):
#	zoom_before_detection = camera.zoom
#	following_player_before_detection = attach_camera_to_player
#	position_before_detection = camera.position
#	tween.interpolate_property(camera, "zoom", camera.zoom, camera.zoom - Vector2(0.5,0.5), detection_time)
#	attach_camera_to_player = true
#	tween.start()

#func _on_player_got_away():
#	tween.remove(camera, "zoom")
#	tween.interpolate_property(camera, "zoom", camera.zoom, zoom_before_detection, 0.2)
#	attach_camera_to_player = following_player_before_detection
#	camera.position = position_before_detection
#	tween.remove(warning, "zoom")
#	tween.start()

#Color detection

func _on_player_being_detected(detection_time):
	tween.remove(warningFade, "color")
	tween.interpolate_property(warningFade, "color", Color(1, 1, 0, 0), Color(1, 0, 0, 0.2), detection_time)
	tween.start()

func _on_player_got_away():
	tween.remove(warningFade, "color")
	tween.interpolate_property(warningFade, "color", warningFade.color, Color(0, 0, 0, 0), 1)
	tween.start()


func _on_game_finished(stolen_picture, player):
	tween.interpolate_property(music, "volume_db", music.volume_db, -5, 1)
	tween.start()
	final_fade.fade_out(player)
