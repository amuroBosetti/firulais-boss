extends Node

export (Color) var BASE:Color = Color(1.0, 1.0, 1.0, 1.0)
export (Color) var SELECTED:Color = Color(1.0, 1.0, 1.0, 1.0)

onready var start = $Start
onready var close = $Close

var options:Array 
var index = null

func _ready():
	start.color_base = BASE
	start.color_selected = SELECTED
	close.color_base = BASE
	close.color_selected = SELECTED
	options = [start, close]

func _process(_delta):
	if Input.is_action_just_pressed("up"):
		_select(1)
	if Input.is_action_just_pressed("down"):
		_select(-1)
	if Input.is_action_just_pressed("accept"):
		if index != null:
			options[index]._execute()

func _select(index_movement:int):
	if index == null:
		index = 1
	options[index].deselect()
	index = (index + index_movement) % options.size()
	options[index].select()
	
func _on_Start_mouse_entered():
	start.select()
	close.deselect()
	index = 0

func _on_Start_mouse_exited():
	start.deselect()
	close.deselect()
	index = null

func _on_Close_mouse_entered():
	close.select()
	start.deselect()
	index = 1
	
func _on_Close_mouse_exited():
	start.deselect()
	close.deselect()
	index = null
