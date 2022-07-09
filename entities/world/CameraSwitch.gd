extends Area2D
class_name CameraSwitch

signal interactable

export (NodePath) var CAMERA:NodePath 

onready var base:Sprite = $Base
onready var on:Sprite = $On
onready var off:Sprite = $Off
onready var glow:Sprite = $Glow

var camera:Node2D

func _ready():
	init()
	camera = get_node(CAMERA)

func init():
	glow.visible = false
	on.visible = true
	off.visible = false

func _interact(_body):
	camera._interact()
	GameStats.add_switch(self)
	on.visible = !on.visible
	off.visible = !off.visible

func _on_CameraSwitch_body_entered(body):
	if body is Player:
		emit_signal("interactable",self)
		glow.visible = true
		
func _on_CameraSwitch_body_exited(body):
	if body is Player:
		emit_signal("interactable",null)
		glow.visible = false

func reset():
	init()
	camera.reset()
