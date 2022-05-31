extends Area2D

signal change_tracka
signal change_trackb

func _on_ChangeTrack_body_entered(body):
	emit_signal("change_trackb")

func _on_ChangeTrack_body_exited(body):
	emit_signal("change_tracka")
