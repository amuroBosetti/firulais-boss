extends "res://entities/AbstractState.gd"

var limit_left_x:float
var limit_right_x:float

func _set_limits(left_x:float, right_x:float):
	limit_left_x  = left_x
	limit_right_x = right_x

func enter():
	parent._play_animation("walk")
	parent.audio_player.play()
	
func exit():
	parent._stop_walk_animation()
	parent.audio_player.stop()

func update(_delta:float):
	parent._apply_movement()
	if(parent.global_position.x >= limit_right_x 
	  or parent.global_position.x <= limit_left_x):
		emit_signal("finished", "idle")
		return
	if(parent.is_on_wall()):
		emit_signal("finished", "idle")
