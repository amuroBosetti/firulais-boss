extends Node

func _ready():
	$CameraManager._initialize()
	$Music._play()
	GameStats.initialize(get_all_stealable())

func _process(delta):
	GameStats.add_time(delta)

func _on_game_finished(stolen_picture, player):
	GameStats.finish_game()
	yield(get_tree().create_timer(1), "timeout")
	if get_tree().change_scene("res://StatsScene.tscn") != OK:
		print ("Error al querer iniciar StatsScene.tscn")

func get_all_stealable() -> Array: #Array<StealableModel>
	var stealables = []
	var counter = 1
	for each in $Steleables.get_children():
		each.id = counter
		stealables.append(StealableModel.new(each))
		counter += 1
	return stealables
