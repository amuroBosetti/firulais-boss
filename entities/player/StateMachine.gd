extends "res://entities/AbstractStateMachine.gd"

func _ready():
	states_map = {
		"idle": $Idle,
		"walk": $Walk,
		"jump_up": $JumpUp,
		"jump_down": $JumpDown,
		"caught": $Caught,
		"hang": $Hang,
		"stealing": $Stealing
	}


func _on_AnimationPlayer_animation_finished(anim_name):
	_on_animation_finished(anim_name)
