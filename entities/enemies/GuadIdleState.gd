extends "res://entities/AbstractState.gd"

func enter():
	$IdleTimer.start()
	parent.play_idle_animation()
	
func update(delta: float):
	parent._look_for_player()
	parent._sync_lights()
	
func _on_Timer_timeout():
	if parent._has_to_turn():
		parent.scale.x *= -1
		parent.direction *= -1
	emit_signal("finished", "walk")
	
func exit():
	$IdleTimer.stop()
