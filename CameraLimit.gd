extends Area2D

onready var camera_animation_player : AnimationPlayer = get_parent().get_node("CameraAnimationPlayer")

func _on_CameraLimit_body_entered(body):
	if body is Player:
		camera_animation_player.play("camera_area_enter")
