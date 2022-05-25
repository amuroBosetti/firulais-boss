extends Area2D
tool

export (int) var TIME_START 
export (int) var CYCLETIME 
export (float) var SCALE_LENGTH = 1

var count:int

func _ready():
	count = TIME_START * -1
	$Sprite.scale.x = SCALE_LENGTH
	$CollisionShape2D.scale.x = SCALE_LENGTH
	$LaserEndA.global_position = $Sprite/Position2DA.global_position
	$LaserEndB.global_position = $Sprite/Position2DB.global_position

func _process(delta):
	if Engine.editor_hint:
		$Sprite.scale.x = SCALE_LENGTH
		$LaserEndA.global_position = $Sprite/Position2DA.global_position
		$LaserEndB.global_position = $Sprite/Position2DB.global_position

func timeout():
	count += 1 
	if count == CYCLETIME:
		enable_laser(true)
	elif count == CYCLETIME * 2:
		enable_laser(false)
		count = 0

func enable_laser(boolean:bool):
		$CollisionShape2D.set_deferred("disabled", !boolean)
		$Sprite.set_deferred("visible", boolean)

func _on_Laser_body_entered(body):
	if body is Player:
		body.respawn_player()
