extends "res://entities/AbstractState.gd"

func enter():
	parent.play_animation("idle")
	yield(get_tree().create_timer(2), "timeout")
	parent._respawn()
	
func update(_delta:float):
	parent.on_jump_body.disabled = true
	parent._apply_movement()
	parent._handle_deacceleration()
	
func exit():
	parent.caught = false
