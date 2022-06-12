extends "res://entities/AbstractState.gd"

func enter():
	$IdleTimer.start()
	get_owner().play_idle_animation()
	
func _on_Timer_timeout():
	get_owner().scale.x *= -1
	get_owner().direction *= -1
	emit_signal("finished", "walk")
