extends Area2D
tool

export (String, "Left", "Rigth") var PRESS_DIRECTION setget _set_direction

onready var animation_player:AnimationPlayer = $AnimationPlayer

var target = null
var direction:int
var color_rect_lenght:float = 27

func _ready():
	$ColorRect.visible = false
	if animation_player.has_animation("spark"):
		animation_player.play("spark")

func _process(_delta):
	if target != null:
		if target.hanging_position.y > global_position.y \
		and target.move_direction == direction:
			target._hang($Position2D.global_position.y)
	if Engine.editor_hint:
		$ColorRect.visible = true

func _on_Ledge_body_entered(body):
	if body is Player:
		target = body

func _on_Ledge_body_exited(body):
	if body is Player:
		target = null
		
func _set_direction(dir:String):
	PRESS_DIRECTION = dir
	if dir == "Left":
		direction = -1 
	else:
		direction = 1
	_set_position(direction)
	_set_editor_position(direction)

func _set_position(direction:int):
	$Position2D.position.x = abs($Position2D.position.x) * direction
	$Spark.position.x = abs($Spark.position.x) * direction

func _set_editor_position(direction:int):
	if Engine.editor_hint:
		$ColorRect.rect_position.x = abs($ColorRect.rect_position.x) * direction
		if direction == -1:
			$ColorRect.margin_right = $Position2D.position.x
			$ColorRect.margin_left = $ColorRect.margin_left - color_rect_lenght
		else:
			$ColorRect.margin_left = $Position2D.position.x
			$ColorRect.margin_right = $Position2D.position.x + color_rect_lenght
