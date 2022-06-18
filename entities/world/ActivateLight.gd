extends Area2D

export (NodePath) var LIGHT2D
export (bool) var ON_ENTER = false
export (bool) var ON_EXIT  = false

var light:Light2D 

func _ready():
	if not LIGHT2D == null:
		light = get_node(LIGHT2D)		 
	
func _on_ActivateLight_body_entered(body):
	if body is Player and ON_ENTER:
		light.enabled = true

func _on_ActivateLight_body_exited(body):
	if body is Player and ON_EXIT:
		light.enabled = false
