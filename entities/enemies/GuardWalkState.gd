extends "res://entities/AbstractState.gd"

func enter():
	parent._play_animation("walk")
	parent.audio_player.play()
	
func exit():
	parent._stop_walk_animation()
	parent.audio_player.stop()

func update(_delta:float):
	parent._apply_movement()
	parent._sync_lights()
	if parent._has_to_turn():
		emit_signal("finished", "idle")
