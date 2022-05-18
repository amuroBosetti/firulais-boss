extends Sprite
class_name MonitorCamera

export (float) var MOVEMENT_SPEED:float = 0.5
export (float) var MOVEMENT_DEGREE:float = 45

var camera_rotation_degrees = 0
var rotation_degrees_count = 0
var direction = 1
var active = true
var show_field_of_view = true

var target = null
var raycast

func _ready():
	raycast = $RayCast2D

func _process(delta):
	
	if active:
		rotation_degrees_count += direction * (MOVEMENT_SPEED + delta)

		if target != null:
			raycast.set_cast_to(to_local(target.global_position))
			raycast.enabled = true
			if raycast.is_colliding() && raycast.get_collider() == target:
				target.respawn_player()

	if rotation_degrees_count > -MOVEMENT_DEGREE and rotation_degrees_count < MOVEMENT_DEGREE:
		camera_rotation_degrees = rotation_degrees_count 
	
	if rotation_degrees_count >= MOVEMENT_DEGREE:
		camera_rotation_degrees = MOVEMENT_DEGREE
	if rotation_degrees_count > MOVEMENT_DEGREE + 20:
		direction = -1
	if rotation_degrees_count <= -MOVEMENT_DEGREE:
		camera_rotation_degrees = -MOVEMENT_DEGREE
	if rotation_degrees_count < -MOVEMENT_DEGREE - 20:
		direction = 1
	
	self.rotation_degrees = camera_rotation_degrees

func _on_Area2D_body_entered(body):
	if body is Player and target == null:
		target = body
		raycast.enabled = true
		
func _on_Area2D_body_exited(body):
	if target == body:
		target = null
		raycast.enabled = false	

func _interact():
	active = !active
	$FieldOfView/Sprite.set_deferred("visible", active)
