extends Area2D
tool

export (int) var TIME_START:int = 0
export (int) var CYCLETIME:int = 2
export (float) var SCALE_LENGTH = 1 setget _set_scale

onready var sfx:AudioStreamPlayer2D = $AudioStreamPlayer2D

var count:int

func _set_scale(scale_length):
	SCALE_LENGTH = scale_length
	if Engine.editor_hint:
		_initialize()

func _ready():
	count = TIME_START * -1
	_initialize()

func _initialize():
	$Sprite.scale.x = SCALE_LENGTH
	$CollisionShape2D.scale.x = SCALE_LENGTH
	$LaserEndA.global_position = $Sprite/Position2DA.global_position
	$LaserEndB.global_position = $Sprite/Position2DB.global_position
		
func timeout():
	count += 1 
	if count == CYCLETIME:
		enable_laser(true)
	elif count == CYCLETIME * 2:
		enable_laser(false)
		count = 0

func enable_laser(enable:bool):
	$CollisionShape2D.set_deferred("disabled", !enable)
	$Sprite.set_deferred("visible", enable)
	if enable and not sfx.playing:
		sfx.play()
	else:
		if sfx.playing:
			sfx.stop()

func _on_Laser_body_entered(body):
	if body is Player:
		body.respawn_player()
