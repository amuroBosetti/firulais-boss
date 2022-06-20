extends Light2D

onready var body = get_parent()

func turn(light_status):
	if(light_status != body.TurnAroundFrames.ONE_LIGHT_ON && light_status != body.TurnAroundFrames.NO_LIGHT_ON):
		self.enabled = true
	else: 
		self.enabled = false
