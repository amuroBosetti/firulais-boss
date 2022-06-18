extends Node

func _ready():
	if get_tree().change_scene("res://FirulaisLogo.tscn") != OK:
		print ("Error al querer iniciar FirulaisLogo.tscn")
