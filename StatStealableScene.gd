extends Control

onready var texture_rect:TextureRect = $TextureRect

var starting_position:Vector2
var siblings:Array
var painting:StealableModel
var index:int

func _ready():
	var original_size = rect_size
	texture_rect.rect_min_size = original_size
	texture_rect.texture = painting.texture
	var scale_factor = original_size/texture_rect.texture.get_size()
	texture_rect.rect_scale = scale_factor
	if painting.stolen:
		self.set_modulate(Color("8b8b8b"))	

func initialize(stealable:StealableModel, rest:Array, position:Vector2, index:int):
	starting_position = position
	painting = stealable
	siblings = rest
	index = index
	
