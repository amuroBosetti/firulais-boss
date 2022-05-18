extends Area2D
class_name CameraSwitch

signal interactable

onready var camera = get_node("../Camera")

func _interact():
	camera._interact()

func _on_CameraSwitch_body_entered(body):
	emit_signal("interactable",self)

func _on_CameraSwitch_body_exited(body):
	emit_signal("interactable",null)
