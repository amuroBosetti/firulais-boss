extends "res://entities/AbstractState.gd"
 
func enter():
	parent.play_animation("idle")

func _exit():
	emit_signal("finished", "idle")
