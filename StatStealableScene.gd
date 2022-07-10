extends Control

export (Vector2) var FRAME_SIZE:Vector2 = Vector2(120,120)

onready var texture_rect:TextureRect = $TextureRect

var starting_position:Vector2
var siblings:Array
var painting:StealableModel
var index:int

func _ready():
	var size_y
	texture_rect.texture = painting.texture
	texture_rect.rect_scale = get_rect_scale(texture_rect.texture.get_size())
	size_y = texture_rect.rect_scale.y * texture_rect.texture.get_size().y
	if size_y < FRAME_SIZE.y:
		texture_rect.rect_pivot_offset.y = (120 - size_y) / 2
	if not painting.stolen:
		texture_rect.modulate = Color("151313")

func initialize(stealable:StealableModel, rest:Array, index:int):
	painting = stealable
	siblings = rest
	index = index
	
func get_rect_scale(size:Vector2):
	var scale: float
	if size.x > size.y:
		scale = FRAME_SIZE.x / size.x
		return Vector2(scale, scale)
	else:
		scale = FRAME_SIZE.y / size.y
		return Vector2(scale, scale)
