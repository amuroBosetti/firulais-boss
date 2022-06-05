extends Area2D
class_name CameraSwitch

signal interactable

export (NodePath) var CAMERA:NodePath 
var camera:Node2D

func _ready():
	camera = get_node(CAMERA)

func _interact():
	camera._interact()
	$Sprite.flip_v = !$Sprite.flip_v

func _on_CameraSwitch_body_entered(body):
	emit_signal("interactable",self)

func _on_CameraSwitch_body_exited(body):
	emit_signal("interactable",null)
