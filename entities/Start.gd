extends Label

onready var fade = get_node("../Fade")
onready var fade_tween = get_node("../Tween")
onready var audio:AudioStreamPlayer = get_node("../AudioStreamPlayer")

var color_base:Color
var color_selected:Color

func _ready():
	fade.hide()
	fade.color.a = 0
	audio.stream.loop = false
	set_mouse_filter(1)
	
func select():
	set("custom_colors/font_color", color_selected)

func deselect():
	set("custom_colors/font_color", color_base)

func _execute():
	audio.play()
	_change_scene("res://InGame.tscn")

func _on_Start_gui_input(event):
	if _event_is_click(event):
		_execute()
		
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