extends "res://entities/AbstractState.gd"

func enter():
	parent.play_animation("hang")
	parent.velocity.y = 0

func handle_input(event:InputEvent):
	if event.is_action_pressed("jump"):
		emit_signal("finished", "jump_up")
	if event.is_action_pressed("crouch"):
		emit_signal("finished", "jump_down")
