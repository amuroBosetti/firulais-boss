extends Node

onready var tween = $Tween
onready var color_rect = $CanvasLayer/ColorRect


func fade_out(player: Player):
	tween.interpolate_property(color_rect.material, "shader_param/cutoff", 1, 0, 1)
	tween.start()
