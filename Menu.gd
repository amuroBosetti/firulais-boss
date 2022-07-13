extends Node

export (Color) var BASE:Color = Color(1.0, 1.0, 1.0, 1.0)
export (Color) var SELECTED:Color = Color(1.0, 1.0, 1.0, 1.0)
export (AudioStream) var MENU_MUSIC
export (AudioStream) var ON_CHANGE_SFX
export (AudioStream) var ON_CONFIRM_SFX

onready var start:Label = $Start
onready var close:Label = $Close
onready var audio_player:AudioStreamPlayer = $SFX
onready var haskell_player:AudioStreamPlayer = $SFXHaskell
onready var music_player:AudioStreamPlayer = $Music
onready var tween:Tween = $Tween
onready var sprite:Sprite = $Sprite
onready var haskell_sfx:AudioStream = load("res://assets/audio/haskell.ogg")
onready var background_tween:Tween = $BackgroundTween
onready var background1:Sprite = $Background
onready var background1_upper_limit:Position2D = $Background/UpperLimit
onready var background1_lower_limit:Position2D = $Background/LowerLimit
onready var background2:Sprite = $Background2
onready var background2_upper_limit:Position2D = $Background2/UpperLimit
onready var background2_lower_limit:Position2D = $Background2/LowerLimit
onready var background3:Sprite = $Background3
onready var background3_upper_limit:Position2D = $Background3/UpperLimit
onready var background3_lower_limit:Position2D = $Background3/LowerLimit

var options:Array 
var index = 0
var selected_already = false
var firulais_code:Array = ["F","I","R","U","L","A","I","S"]
var input_tmp:Array = []
var movement_vector = Vector2(0.868023, -0.496524)

func _ready():
	_init_colors()
	_init_sfx()
	options = [start, close]
	start.select()
	music_player.stream = MENU_MUSIC
	#music_player.volume_db = music_player.volume_db -2
	music_player.play()
	set_up_initial_limits()
	
func _physics_process(delta):
	move_background(delta)

func _input(event):
	check_code(event)
	if !selected_already:
		if event.is_action_pressed("up"):
			_select(1)
		if event.is_action_pressed("down"):
			_select(-1)
		if event.is_action_pressed("accept"):
			if index != null:
				selected_already = true
				options[index]._execute()

func _init_colors():
	start.color_base = BASE
	start.color_selected = SELECTED
	close.color_base = BASE
	close.color_selected = SELECTED

func _init_sfx():
	ON_CHANGE_SFX.loop = false
	ON_CONFIRM_SFX.loop = false
	haskell_sfx.loop = false
	start.sfx = ON_CONFIRM_SFX
	audio_player.stream = ON_CHANGE_SFX
	haskell_player.stream = haskell_sfx

func _select(index_movement:int):
	
	if index == null:
		index = 1
	options[index].deselect()
	index = (index + index_movement) % options.size()
	options[index].select()
	audio_player.play()
	
func _on_Start_mouse_entered():
	if not index == 0:
		audio_player.play()
	start.select()
	close.deselect()
	index = 0

func _on_Start_mouse_exited():
	start.deselect()
	close.deselect()
	index = null

func _on_Close_mouse_entered():
	if not index == 1:
		audio_player.play()
	close.select()
	start.deselect()
	index = 1
	
func _on_Close_mouse_exited():
	start.deselect()
	close.deselect()
	index = null

func check_code(event_):
	if event_.is_pressed():
		input_tmp.append(event_.as_text())
	if input_tmp != firulais_code.slice(0, input_tmp.size()-1):
		input_tmp = []
	if input_tmp == firulais_code:
		haskell()
		input_tmp = []

func haskell():
	tween.interpolate_property(sprite, "position:x", sprite.position.x, sprite.position.x - 80, 0.3)
	tween.start()
	haskell_player.play()
	yield(get_tree().create_timer(0.5), "timeout")
	tween.remove(sprite)
	tween.interpolate_property(sprite, "position:x", sprite.position.x, sprite.position.x + 80, 0.3)
	tween.start()
	
func move_background(delta):
	if background1.position > background1_upper_limit.position:
		background1.position = background1_lower_limit.position
	if background2.position < background2_upper_limit.position:
		background2.position = background2_lower_limit.position
	if background3.position < background3_upper_limit.position:
		background3.position = background3_lower_limit.position
	background1.position += movement_vector * delta * 600
	background2.position -= movement_vector * delta * 600
	background3.position -= movement_vector * delta * 600

func set_up_initial_limits():
	background1_upper_limit.position = background1.position + (movement_vector * 1000)
	background1_lower_limit.position = background1.position - (movement_vector * 1000)
	background2_upper_limit.position = background2.position - (movement_vector * 1000)
	background2_lower_limit.position = background2.position + (movement_vector * 1000)
	background3_upper_limit.position = background3.position - (movement_vector * 1000)
	background3_lower_limit.position = background3.position + (movement_vector * 1000)
