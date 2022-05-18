extends Area2D

func _on_Checkpoint_body_entered(body):
	if body is Player:
		body.spawn_position =  body.position
		$CollisionShape2D.set_deferred("disabled", true)
