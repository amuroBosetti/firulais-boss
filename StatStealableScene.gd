extends Sprite

var starting_position:Vector2
var siblings:Array
var painting:String
var index:int

func _ready():
	position.x = starting_position.x + (index * 200)
	var original_size = self.texture.get_size()
	var texture = load(painting)
	var final_size = texture.get_size()

func initialize(stealable:String, rest:Array, position, index):
	self.starting_position = position
	self.painting = stealable
	self.siblings = rest
	self.index = index
	
