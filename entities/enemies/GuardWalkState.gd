extends "res://entities/AbstractState.gd"

func enter():
	get_owner()._play_animation("walk")

func exit():
	get_owner()._stop_walk_animation()

func update(_delta:float):
	get_owner()._apply_movement()
	if(get_owner().is_on_wall()):
		emit_signal("finished", "idle")
