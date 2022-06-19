extends Node

export (Color) var BASE:Color = Color(1.0, 1.0, 1.0, 1.0)
export (Color) var SELECTED:Color = Color(1.0, 1.0, 1.0, 1.0)
export (AudioStream) var ON_CHANGE_SFX
export (AudioStream) var ON_CONFIRM_SFX

onready var start = $Start
onready var close = $Close
onready var audio_player = $AudioStreamPlayer

var options:Array 
var index = 0
var selected_already = false

func _ready():
	_init_colors()
	_init_sfx()
	options = [start, close]
	start.select()

func _input(event):
	if !selected_already:
		if event.is_action_pressed("up"):
			_select(1)
		if event.is_action_pressed("down"):
			_select(-1)
		if event.is_action_pressed("accept"):
			if index != null:
				selected_already = true
				options[index]._execute()

func _init_colors():
	start.color_base = BASE
	start.color_selected = SELECTED
	close.color_base = BASE
	close.color_selected = SELECTED

func _init_sfx():
	ON_CHANGE_SFX.loop = false
	ON_CONFIRM_SFX.loop = false
	start.sfx = ON_CONFIRM_SFX
	audio_player.stream = ON_CHANGE_SFX

func _select(index_movement:int):
	if index == null:
		index = 1
	options[index].deselect()
	index = (index + index_movement) % options.size()
	options[index].select()
	audio_player.play()
	
func _on_Start_mouse_entered():
	if not index == 0:
		audio_player.play()
	start.select()
	close.deselect()
	index = 0

func _on_Start_mouse_exited():
	start.deselect()
	close.deselect()
	index = null

func _on_Close_mouse_entered():
	if not index == 1:
		audio_player.play()
	close.select()
	start.deselect()
	index = 1
	
func _on_Close_mouse_exited():
	start.deselect()
	close.deselect()
	index = null
