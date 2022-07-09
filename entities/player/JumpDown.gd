extends "res://entities/AbstractState.gd"

func enter():
	parent.play_animation("jump_transition")
	
func update(_delta:float):
	parent._handle_move_input()

	if parent.move_direction == 0:
		parent._handle_deacceleration()
	
	parent._apply_movement()
	
	if parent.is_on_floor():
		if parent.move_direction != 0:
			emit_signal("finished", "walk")
		else:
			emit_signal("finished", "idle")
			

func _on_animation_finished(anim_name:String):
	if anim_name == "jump_transition":
		parent.play_animation("jump_down")
