extends Node

onready var tint = $CanvasLayer/ColorRect
onready var label = $CanvasLayer/Label

var pause = true

func _ready():
	tint.hide()
	label.hide()

func _process(_delta):
	if Input.is_action_just_pressed("pause"):
		get_tree().paused = pause
		tint.visible = pause
		label.visible = pause
		pause = !pause
