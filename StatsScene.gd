extends Control

onready var time_label = $CanvasLayer/Time
onready var title_label = $CanvasLayer/Title
onready var canvas_layer = $CanvasLayer
onready var grid_container:GridContainer = $CanvasLayer/GridContainer
onready var credits_color_rect:ColorRect = $Credits/CanvasLayer2/ColorRect2
onready var credits:CenterContainer = $Credits/CanvasLayer2/CenterContainer
onready var description = $CanvasLayer/PaintDescription
onready var tween:Tween = $Tween
onready var credits_spawn_position:Vector2

var stealable_scene = load("res://StatStealableScene.tscn")
var total_stolen = 0

func _ready():
	credits_spawn_position = credits.rect_position
	init_credits()
	var stealable_instances:Array = []
	var index = 0
	for painting in GameStats.all_stealable:
		if painting.stolen:
			total_stolen += 1
		var stealable_instance = stealable_scene.instance()
		stealable_instance.initialize(painting, stealable_instances, index)
		grid_container.add_child(stealable_instance)
		stealable_instances.append(stealable_instance)
		index += 1
	var time = GameStats.time
	time_label.text = "TIEMPO: %s" % format_time(time)
	title_label.text = "RANGO: %s" % get_title()
	conect_grid_children()
	
func format_time(time) -> String:
	var minutes = time / 60
	var seconds = fmod(time, 60)
	var milliseconds = fmod(time, 1) * 100
	return "%02d:%02d:%02d" % [minutes, seconds, milliseconds]

func get_title():
	var time = GameStats.time
	if time < 4 * 60 and total_stolen == 7:
		return "ladron maestro"
	elif time < 6 * 60 and total_stolen >= 6:
		return "ladron experto"
	elif time < 10 * 60 and total_stolen >= 4:
		return "ladronzuelo"
	elif time < 15 * 60 and total_stolen >= 2:
		return "ladron principiante"
	elif time > 47 * 60:
		return "Docente"
	else:
		return "Lo importante es divertirse"
		
func init_credits():
	credits_color_rect.visible = false
	credits.visible = false
	credits.rect_position = credits_spawn_position

func _on_Quit_pressed():
	if get_tree().change_scene("res://Menu.tscn") != OK:
		print ("Error al querer iniciar Menu.tscn")

func _on_Credits_pressed():
	credits_color_rect.visible = true
	credits.visible = true
	tween.interpolate_property(credits, "rect_position:y", credits.rect_position.y, -660, 15)
	tween.start()

func _on_Tween_tween_completed(object, key):
	if object == credits and key == ":rect_position:y":
		yield(get_tree().create_timer(2), "timeout")
		init_credits()

func mouse_hover_on(text:String):
	description.text = text

func mouse_hover_off():
	description.text = ""

func conect_grid_children():
	for each in grid_container.get_children():
		each.connect("mouse_entered_painting", self, "mouse_hover_on") 
		each.connect("mouse_exited_painting", self, "mouse_hover_off") 
