extends Control

onready var time_label = $CanvasLayer/Time

func _ready():
	var time = GameStats.time
	var minutes = time / 60
	var seconds = fmod(time, 60)
	var milliseconds = fmod(time, 1) * 100
	var time_string = "%02d:%02d:%02d" % [minutes, seconds, milliseconds]
	time_label.text = "TIEMPO: %s" % time_string
	
