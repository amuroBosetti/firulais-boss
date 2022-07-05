extends Node

onready var color_rect = $CanvasLayer/ColorRect
onready var container = $CanvasLayer/CenterContainer
onready var resume_btn = $CanvasLayer/CenterContainer/VBoxContainer/Resume
onready var restart_btn = $CanvasLayer/CenterContainer/VBoxContainer/Restart
onready var quit_btn = $CanvasLayer/CenterContainer/VBoxContainer/Quit

var pause:bool = false

func _ready():
	color_rect.visible = false
	container.visible = false
	resume_btn.grab_focus()
	
func _process(_delta):
	if Input.is_action_just_pressed("pause"):
		resume_btn.grab_focus()
		_pause()
		
func _pause():
	pause = !pause
	get_tree().paused = pause
	color_rect.visible = pause
	container.visible = pause

func _on_Resume_pressed():
	_pause()

func _on_Restart_pressed():
	GameStats.restart_game()
	if get_tree().reload_current_scene() != OK:
		print ("Error al querer reiniciar la escena " + get_tree().current_scene.name)
	_pause()

func _on_Quit_pressed():
	_change_scene("res://Menu.tscn")

func _change_scene(scene_path:String):
	GameStats.restart_game()
	if get_tree().change_scene(scene_path) != OK:
		print ("Error al querer iniciar " + scene_path)
	_pause()
