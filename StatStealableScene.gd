extends Sprite

var starting_position:Vector2
var siblings:Array
var painting:String
var index:int

func _ready():
	position.x = starting_position.x + (index * 250)
	var original_size = self.texture.get_size()
	for each in GameStats.stolen_textures:
		if each == painting:
			var og_texture = load(each)
			self.texture = og_texture
			var scale_factor = original_size/og_texture.get_size()
			self.scale = scale_factor
	

func initialize(stealable:String, rest:Array, position, index):
	self.starting_position = position
	self.painting = stealable
	self.siblings = rest
	self.index = index
	
