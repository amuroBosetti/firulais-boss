extends Area2D

func _on_Vase_body_entered(body):
	if body is Player:
		$Normal.set_deferred("visible", false)
		$Hidden.set_deferred("visible", true)
		body.make_hidden()

func _on_Vase_body_exited(body):
	if body is Player:
		$Normal.set_deferred("visible", true)
		$Hidden.set_deferred("visible", false)
		body.make_visible()
