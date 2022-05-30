extends Node

func _ready():
	$CameraAnimation._set_camera_on($Player.position, Vector2(1,1), true)
