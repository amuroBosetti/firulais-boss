extends Area2D

signal change_tracka
signal change_trackb

func _on_ChangeTrack_body_entered(body):
	if body is Player:
		emit_signal("change_trackb")

func _on_ChangeTrack_body_exited(body):
	if body is Player:
		emit_signal("change_tracka")
