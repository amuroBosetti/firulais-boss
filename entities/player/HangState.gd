extends "res://entities/AbstractState.gd"

func enter():
	parent.play_animation("hang")
	parent.velocity.y = 0

func update(delta):
	if !_should_look_to_other_side(Input.is_action_pressed("move_left"), Input.is_action_pressed("move_right")):
		parent.play_animation("hang")

func handle_input(event:InputEvent):
	parent.on_jump_body.disabled = false
	if event.is_action_pressed("jump"):
		emit_signal("finished", "jump_up")
	if event.is_action_pressed("crouch"):
		emit_signal("finished", "jump_down")
#	COntroles para bajar si apretas para el lado contrario
	if _should_look_to_other_side(event.is_action_pressed("move_left"), event.is_action_pressed("move_right")):
		parent.play_animation("hang_looking_to_other_side")

func _should_look_to_other_side(is_pressing_left:bool, is_pressing_right:bool) -> bool:
	return (parent.hanging_direction == 1 and is_pressing_left) or \
		(parent.hanging_direction == -1 and is_pressing_right)
