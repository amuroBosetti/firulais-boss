extends "res://entities/AbstractState.gd"

func enter():
	parent._play_animation("walk")
	parent.audio_player.play()
	

func exit():
	parent._stop_walk_animation()
	parent.audio_player.stop()

func update(_delta:float):
	parent._apply_movement()
	if(parent.is_on_wall()):
		emit_signal("finished", "idle")
