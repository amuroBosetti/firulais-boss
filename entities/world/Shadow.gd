extends Sprite

func _on_Area2D_body_entered(body):
	print("entered")
	if body is Player:
		body.make_hidden()

func _on_Area2D_body_exited(body):
	print("exited")
	if body is Player:
		body.make_visible()

