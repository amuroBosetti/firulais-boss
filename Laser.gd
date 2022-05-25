extends Area2D


export (int) var TIME_START 
export (int) var CYCLETIME 
onready var count:int = TIME_START * -1

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
