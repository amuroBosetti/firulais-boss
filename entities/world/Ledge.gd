extends Area2D

export (String, "Left", "Rigth") var DIRECTION

var target = null
var direction:int

func _ready():
	if DIRECTION == "Left":
		direction = 1
	else:
		direction = -1
		$Position2D.position.x *= -1

func _process(delta):
	if target != null:
		if target.hanging_position.y > global_position.y \
		and target.move_direction == direction:
			target._hang($Position2D.global_position.y)

func _on_Ledge_body_entered(body):
	if body is Player:
		target = body

func _on_Ledge_body_exited(body):
	if body is Player:
		target = null
