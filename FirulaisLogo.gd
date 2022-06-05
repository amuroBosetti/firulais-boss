extends Node

onready var fade = $Fade/ScreenCover
onready var fade_tween = $Fade/Tween

func _ready():
	fade.color.a = 0
	fade.hide()
	yield(get_tree().create_timer(4), "timeout")
	fade_to_black()
	yield(get_tree().create_timer(2), "timeout")
	get_tree().change_scene("res://InGame.tscn")

func fade_to_black():
	fade.show()
	fade_tween.interpolate_property(fade, "color", fade.color, Color.black, 1)
	fade_tween.start()
