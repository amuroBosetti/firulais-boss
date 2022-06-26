extends Node

func _ready():
	$CameraManager._initialize()
	$Music._play()


func _on_player_being_detected(detection_time):
	pass # Replace with function body.
