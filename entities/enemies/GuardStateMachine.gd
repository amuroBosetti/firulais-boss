extends "res://entities/AbstractStateMachine.gd"

func _ready():
	states_map = {
		"idle": $Idle,
		"walk": $Walk,
		"detect_player": $DetectPlayer,
	}
