extends Label

var color_base:Color
var color_selected:Color

func _ready():
	set_mouse_filter(1)

func select():
	set("custom_colors/font_color", color_selected)

func deselect():
	set("custom_colors/font_color", color_base)

func _execute():
	get_tree().quit()

func _on_Close_gui_input(event):
	if _event_is_click(event):
		_execute()
		
func _event_is_click(event):
	if event is InputEventMouseButton:
		return event.button_index == BUTTON_LEFT and event.pressed

func _change_font_color(label:Label, color:Color):
	label.set("custom_colors/font_color", color)
