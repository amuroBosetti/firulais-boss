extends Area2D

export (Color) var SET_COLOR
export (NodePath) var BACKGROUND

onready var tween:Tween = $Tween

var color_rect:ColorRect

func _ready():
	color_rect = get_node(BACKGROUND)

func _on_ChangeBackground_body_entered(body):
	if body is Player:
		tween.interpolate_property(color_rect, "color", color_rect.color, SET_COLOR, 0.5)
		tween.start()
