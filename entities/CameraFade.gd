extends Node

onready var fade = $CanvasLayer/ColorRect
onready var fade_tween = $Tween

signal fade_in_completed

func _ready():
	fade.color.a = 0

func fade_out():
	fade_tween.interpolate_property(fade, "color", fade.color, Color.black, 1)
	fade_tween.start()
	
func fade_in():
	var color:Color = fade.color
	color.a = 0
	fade_tween.interpolate_property(fade, "color", Color.black, color , 1)
	fade_tween.start()
	
func _on_Tween_tween_completed(object, _key):
	if object.color == Color(0,0,0,0):
		emit_signal("fade_in_completed")
