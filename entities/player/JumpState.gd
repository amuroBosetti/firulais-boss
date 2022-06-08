extends "res://entities/AbstractState.gd"

onready var jump_timer : Timer = $JumpTimer
	
func enter():
	jump_timer.start()
	parent.play_animation("jump_up")

func update(_delta:float):
	parent._handle_move_input()

	parent.velocity.y = -parent.JUMP_SPEED
	
	if parent.move_direction == 0:
		parent._handle_deacceleration()
	
	parent._apply_movement()
	
	if !Input.is_action_pressed("jump"):
		parent.velocity.y += parent.JUMP_SPEED * 1/10
		emit_signal("finished", "jump_down")
	
	if parent.is_on_floor():
		if parent.move_direction != 0:
			emit_signal("finished", "walk")
		else:
			emit_signal("finished", "idle")


func _on_JumpTimer_timeout():
	if parent.current_state() == self:
		emit_signal("finished", "jump_down")
