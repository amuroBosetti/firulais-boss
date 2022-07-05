extends Node2D

onready var tween:Tween = $Tween
onready var wall:ColorRect = $Area2D/CollisionShape2D/ColorRect

func _ready():
	wall.color.a = 1

func _on_Area2D_body_entered(body):
	if body is Player:
		tween.interpolate_property(wall, "color:a", wall.color.a, 0.2, 1)
		tween.start()

func _on_Area2D_body_exited(body):
	if body is Player:
		tween.interpolate_property(wall, "color:a", wall.color.a, 1, 1)
		tween.start()
