extends "res://entities/AbstractState.gd"

func enter():
	$DetectPlayerTimer.start()
	parent.detect_player()

func _on_DetectPlayerTimer_timeout():
	parent.catch_player()

func exit():
	$DetectPlayerTimer.stop()

func _on_Guard_player_got_away():
	emit_signal("finished", "idle")
