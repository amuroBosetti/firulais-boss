extends Node

onready var fade = $Fade/ScreenCover
onready var fade_tween = $Fade/Tween
onready var audio = $AudioStreamPlayer

func _ready():
	audio.stream.loop = false
	fade.color.a = 0
	fade.hide()
	yield(get_tree().create_timer(1), "timeout")
	audio.play()
	yield(get_tree().create_timer(2), "timeout")
	fade_to_black()
	yield(get_tree().create_timer(2), "timeout")
	if get_tree().change_scene("res://Menu.tscn") != OK:
		print ("Error al querer iniciar res://Menu.tscn")

func fade_to_black():
	fade.show()
	fade_tween.interpolate_property(fade, "color", fade.color, Color.black, 1)
	fade_tween.start()
