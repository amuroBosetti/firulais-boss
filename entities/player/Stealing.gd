extends "res://entities/AbstractState.gd"
 
func enter():
	parent.sfx.stream = load("res://assets/audio/stealing.ogg")
	parent.sfx.play()
	parent.play_animation("stealing")

func caught():
	parent.sfx.stop()
	
func exit():
	parent.sfx.stop()
