extends Control

onready var time_label = $Stats/Time
onready var title_label = $Stats/Title
onready var stats_canvas = $Stats
onready var credits_canvas = $Credits
onready var description = $Stats/PaintDescription
onready var grid_container:GridContainer = $Stats/GridContainer
onready var credits_color_rect:ColorRect = $Credits/ColorRect2
onready var credits:CenterContainer = $Credits/CenterContainer
onready var tween:Tween = $Tween
onready var credits_spawn_position:Vector2
onready var audio_player:AudioStreamPlayer = $AudioStreamPlayer
onready var outro:AudioStream = load("res://assets/audio/outro-arte.ogg")
onready var loop:AudioStream = load("res://assets/audio/stats.ogg")

var stealable_scene = load("res://StatStealableScene.tscn")
var total_stolen = 0

func _ready():
	outro.loop = false
	audio_player.stream = outro
	audio_player.play()
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
	if time < 4 * 60 and total_stolen == 8:
		return "ladron maestro"
	elif time < 6 * 60 and total_stolen >= 6:
		return "ladron experto"
	elif time < 10 * 60 and total_stolen >= 4:
		return "ladronzuelo"
	elif time < 15 * 60 and total_stolen >= 1:
		return "ladron principiante"
	elif time > 47 * 60:
		return "Docente"
	else:
		return "Lo importante es divertirse"
		
func init_credits():
	for each in stats_canvas.get_children():
		each.visible = true
	for each in credits_canvas.get_children():
		each.visible = false
	credits.rect_position = credits_spawn_position

func _on_Quit_pressed():
	if get_tree().change_scene("res://Menu.tscn") != OK:
		print ("Error al querer iniciar Menu.tscn")

func _on_Credits_pressed():
	for each in stats_canvas.get_children():
		each.visible = false
	for each in credits_canvas.get_children():
		each.visible = true
	tween.interpolate_property(credits, "rect_position:y", credits.rect_position.y, -1110, 20)
	tween.start()

func _on_Tween_tween_completed(object, key):
	if object == credits and key == ":rect_position:y":
		yield(get_tree().create_timer(3), "timeout")
		init_credits()

func mouse_hover_on(text:String):
	description.text = text

func mouse_hover_off():
	description.text = ""

func conect_grid_children():
	for each in grid_container.get_children():
		each.connect("mouse_entered_painting", self, "mouse_hover_on") 
		each.connect("mouse_exited_painting", self, "mouse_hover_off") 


func _on_AudioStreamPlayer_finished():
	audio_player.stream = loop
	audio_player.play()
