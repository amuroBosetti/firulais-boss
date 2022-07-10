extends Control

onready var time_label = $CanvasLayer/Time
onready var title_label = $CanvasLayer/Title
onready var canvas_layer = $CanvasLayer
onready var grid_container:GridContainer = $GridContainer
var stealable_scene = load("res://StatStealableScene.tscn")

func _ready():
	var time = GameStats.time
	time_label.text = "TIEMPO: %s" % format_time(time)
	title_label.text = "TITULO: %s" % get_title()
	var stealable_instances:Array = []
	var index = 0
	for painting in GameStats.all_stealable:
		var stealable_instance = stealable_scene.instance()
		stealable_instance.initialize(painting, stealable_instances, index)
		grid_container.add_child(stealable_instance)
		stealable_instances.append(stealable_instance)
		index += 1

func format_time(time) -> String:
	var minutes = time / 60
	var seconds = fmod(time, 60)
	var milliseconds = fmod(time, 1) * 100
	return "%02d:%02d:%02d" % [minutes, seconds, milliseconds]

func get_title():
	#Calculate title
	return "ladron maestro"

func _on_Quit_pressed():
	if get_tree().change_scene("res://Menu.tscn") != OK:
		print ("Error al querer iniciar Menu.tscn")

func _on_Credits_pressed():
	print("ir a creditos")
	pass # Replace with function body.
