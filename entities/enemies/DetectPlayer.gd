extends "res://entities/AbstractState.gd"

func enter():
	$DetectPlayerTimer.start()
	parent.detect_player()
	
func update(delta: float):
	if !parent._is_detecting_player():
		$DetectPlayerTimer.stop()
		emit_signal("finished", "idle")

func _on_DetectPlayerTimer_timeout():
	if parent.target is Player:
		parent.catch_player()
		print("caught")

func exit():
	parent._player_got_away()
