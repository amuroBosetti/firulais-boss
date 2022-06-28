extends StaticBody2D

export (Array, NodePath) var position_node_paths

onready var tween = $PlatformTween

var positions:Array
var counter:int = 1

func _ready():
	for each in position_node_paths:
		positions.append(get_node(each).global_position)
		
	_move_to_next_position()

func _move_to_next_position():
	tween.interpolate_property(self, \
		"position", \
		self.position, \
		positions[counter], \
		5)
	_increment_counter()
	tween.start()


func _on_PlatformTween_tween_completed(object, key):
	tween.remove_all()
	_move_to_next_position()
	
func _increment_counter():
	if (positions.size() - 1) == counter:
		counter = 0
	else:
		counter += 1
