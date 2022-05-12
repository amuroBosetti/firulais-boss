extends "res://entities/AbstractState.gd"

var count:int = 0

func update(delta:float):
	
	if count < 250:
		get_owner()._apply_movement()
		count += 1
	else:
		emit_signal("finished", "idle")
