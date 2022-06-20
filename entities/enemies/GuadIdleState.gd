extends "res://entities/AbstractState.gd"

func enter():
	$IdleTimer.start()
	parent.play_idle_animation()
	
func _on_Timer_timeout():
	parent.scale.x *= -1
	parent.direction *= -1
	emit_signal("finished", "walk")
