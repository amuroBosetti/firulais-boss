extends "res://entities/AbstractState.gd"

func enter():
	$DetectPlayerTimer.start()
	parent.detect_player()

func _on_DetectPlayerTimer_timeout():
	parent.catch_player()
	parent.audio_player.stop()
	parent.animation_player.stop()

func exit():
	$DetectPlayerTimer.stop()

func _on_Guard_player_got_away():
	emit_signal("finished", "idle")
	
func update(_delta):
	parent._look_for_target()
