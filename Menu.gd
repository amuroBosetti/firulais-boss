extends Node

onready var start = $Start
onready var close = $Close
onready var fade = $Fade
onready var fade_tween = $Tween
onready var audio = $AudioStreamPlayer

export (Color) var BASE:Color = Color(1.0, 1.0, 1.0, 1.0)
export (Color) var SELECTED:Color = Color(1.0, 1.0, 1.0, 1.0)

func _ready():
	audio.stream.loop = false
	fade.color.a = 0
	fade.hide()
	start.set_mouse_filter(1)
	close.set_mouse_filter(1)
	start.set("custom_colors/font_color", BASE)
	close.set("custom_colors/font_color", BASE)

func _on_Start_mouse_entered():
	_change_font_color(start, SELECTED)

func _on_Start_mouse_exited():
	_change_font_color(start, BASE)

func _on_Close_mouse_entered():
	_change_font_color(close, SELECTED)

func _on_Close_mouse_exited():
	_change_font_color(close, BASE)

func _on_Close_gui_input(event):
	if _event_is_click(event):
		get_tree().quit()

func _on_Start_gui_input(event):
	if _event_is_click(event):
		audio.play()
		_change_scene("res://InGame.tscn")

func _event_is_click(event):
	if event is InputEventMouseButton:
		return event.button_index == BUTTON_LEFT and event.pressed

func _change_font_color(label:Label, color:Color):
	label.set("custom_colors/font_color", color)

func _change_scene(scene_path:String):
	fade_to_black()
	yield(get_tree().create_timer(2), "timeout")
	get_tree().change_scene(scene_path)

func fade_to_black():
	fade.show()
	fade_tween.interpolate_property(fade, "color", fade.color, Color.black, 1)
	fade_tween.start()
