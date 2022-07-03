extends Node2D
class_name Stealable
tool

signal interactable
signal geting_stolen
signal stolen

export (Texture) var PICTURE:Texture setget set_picture
export (Texture) var DOODLE:Texture
export (Vector2) var TEXTURE_SCALE:Vector2 = Vector2(1,1) setget set_texture_scale
export (float) var AREA_SCALE:float = 1 setget set_area_scale
export (Vector2) var AREA_POSITION:Vector2 = Vector2(0,0) setget set_area_position
export (Vector2) var LIGHT_SCALE:Vector2 = Vector2(1,1) setget set_light_scale
export (float) var STEAL_TIME:float = 2

onready var glow:Sprite = $PictureGlow
onready var picture:Sprite = $Picture
onready var doodle:Sprite = $Doodle
onready var area2D:Area2D = $Area2D
onready var tween:Tween = $Tween
onready var light:Light2D = $Light

var player = null

func _ready():
	glow.texture = PICTURE 
	picture.texture = PICTURE
	doodle.texture = DOODLE
	set_pictures_scale(TEXTURE_SCALE)
	area2D.scale = Vector2(AREA_SCALE, AREA_SCALE)
	area2D.position = AREA_POSITION
	light.scale = LIGHT_SCALE
	init()

func _interact():
	emit_signal("geting_stolen",self)
	glow.visible = false
	light.enabled = false
	tween.interpolate_property(player, "global_position:x", player.global_position.x, global_position.x, 1)
	tween.interpolate_property(picture, "modulate", picture.modulate, Color.black, STEAL_TIME)
	tween.start()

func _on_Tween_tween_completed(_object, key):
	if key == ":modulate":
		picture.visible = false
		doodle.visible = true
		area2D.monitoring = false
		light.enabled = true
		GameStats.add_stealable(self)
		emit_signal("stolen")
		
func init():
	glow.visible = false
	picture.visible = true
	doodle.visible = false
	area2D.monitoring = true
	light.enabled = true
	
func reset():
	picture.modulate =  Color("ffffff")
	init()
		
func _on_Area2D_body_entered(body):
	if body is Player:
		emit_signal("interactable",self)
		glow.visible = true
		player = body

func _on_Area2D_body_exited(body):
	if body is Player:
		emit_signal("interactable",null)
		glow.visible = false
		player = null
	
func set_picture(texture:Texture):
	PICTURE = texture
	if Engine.editor_hint:
		$Picture.texture = texture

func set_texture_scale(scale_:Vector2):
	TEXTURE_SCALE = scale_
	if Engine.editor_hint:
		$Picture.scale = scale_

func set_area_scale(scale_:float):
	AREA_SCALE = scale_
	if Engine.editor_hint:
		$Area2D.scale = Vector2(scale_, scale_)

func set_area_position(pos:Vector2):
	AREA_POSITION = pos
	if Engine.editor_hint:
		$Area2D.position = pos

func set_pictures_scale(scale_:Vector2):
	picture.scale = scale_
	glow.scale = scale_
	doodle.scale = scale_

func set_light_scale(scale_:Vector2):
	LIGHT_SCALE = scale_
	if Engine.editor_hint:
		$Light.scale = scale_
