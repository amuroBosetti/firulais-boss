extends "res://entities/AbstractState.gd"
class_name IdleState

func enter():
	parent.play_animation("idle")

func handle_input(event:InputEvent):
	if event.is_action_pressed("move_left") || event.is_action_pressed("move_right"):
		emit_signal("finished", "walk")
	if event.is_action_pressed("jump") && parent.is_on_floor():
		emit_signal("finished", "jump_up")

func update(_delta:float):
	parent.on_jump_body.disabled = true
	if Input.is_action_pressed("move_left") || Input.is_action_pressed("move_right"):
		emit_signal("finished", "walk")
	parent._handle_deacceleration()
	parent._apply_movement()
