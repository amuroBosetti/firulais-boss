extends "res://entities/AbstractState.gd"

func update(delta:float):
	get_owner()._apply_movement()
	if(get_owner().is_on_wall()):
		emit_signal("finished", "idle")
