extends "res://entities/AbstractState.gd"

func enter():
	parent.play_animation("walk")

func handle_input(event:InputEvent):
	if event.is_action_pressed("jump") && parent.is_on_floor():
		emit_signal("finished", "jump_up")

func update(_delta:float):
	parent._handle_move_input()
	parent._apply_movement()
	if parent.move_direction == 0:
		emit_signal("finished", "idle")
	if not parent.is_on_floor():
		emit_signal("finished", "jump_down")
