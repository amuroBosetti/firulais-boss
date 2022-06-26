extends "res://entities/AbstractState.gd"

func enter():
	$DetectPlayerTimer.start()
	parent.play_detecting_animation()
	
func update(delta: float):
	if !parent._is_detecting_player():
		$DetectPlayerTimer.stop()
		emit_signal("finished", "idle")

func _on_DetectPlayerTimer_timeout():
	parent.catch_player()
	print("caught")
