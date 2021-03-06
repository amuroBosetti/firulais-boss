extends Object
class_name StealableModel

var id:String
var texture:Texture
var stolen:bool = false
var temporary_stolen:bool = false
var stealable:Stealable
var description:String

func _init(node: Stealable):
	id = node.get_id()
	texture = node.get_texture()
	stealable = node
	description = node.DESCRIPTION

func checkpoint():
	stolen = temporary_stolen
	
func steal():
	temporary_stolen = true

func reset():
	temporary_stolen = stolen
	if not stolen:
		stealable.reset()
