extends "res://entities/AbstractState.gd"
	
func update(delta:float):
	parent._handle_move_input()

	if parent.move_direction == 0:
		parent._handle_deacceleration()
	
	parent._apply_movement()
	
	if parent.is_on_floor():
		if parent.move_direction != 0:
			emit_signal("finished", "walk")
		else:
			emit_signal("finished", "idle")