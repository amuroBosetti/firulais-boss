extends "res://entities/AbstractStateMachine.gd"

func _ready():
	states_map = {
		"idle": $Idle,
		"walk": $Walk,
		"jump_up": $JumpUp,
		"jump_down": $JumpDown
#		"captured": $Captured,
	}
