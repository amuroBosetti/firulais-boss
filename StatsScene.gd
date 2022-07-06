extends Control

onready var time_label = $CanvasLayer/Time
onready var canvas_layer = $CanvasLayer
onready var starting_position:Position2D = $StartingPosition
var stealable_scene = load("res://StatStealableScene.tscn")

func _ready():
	var time = GameStats.time
	time_label.text = "TIEMPO: %s" % format_time(time)
	var stealable_instances:Array = []
	var index = 0
	for painting in GameStats.all_stealable:
		var stealable_instance = stealable_scene.instance()
		stealable_instance.initialize(painting.resource_path, stealable_instances, starting_position.position, index)
		canvas_layer.add_child(stealable_instance)
		stealable_instances.append(stealable_instance)
		index += 1
		
	
func format_time(time) -> String:
	var minutes = time / 60
	var seconds = fmod(time, 60)
	var milliseconds = fmod(time, 1) * 100
	return "%02d:%02d:%02d" % [minutes, seconds, milliseconds]
