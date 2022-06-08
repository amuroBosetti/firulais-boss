extends AudioStreamPlayer

var audioA:AudioStream = load("res://assets/audio/arteA.ogg")
var audioB:AudioStream = load("res://assets/audio/arteB.ogg")
var track = audioA 
var change_track = false

func _process(_delta):
	if change_track and stepify((get_playback_position() / 3), 0.02) \
									== round(get_playback_position() / 3): # stepify_beat == beat:
		_play()
		change_track = false

func _play():
	stream = track
	play()

func _change_track(audio_stream:AudioStream):
	track = audio_stream
	change_track = true

func _on_ChangeTrack_tracka():
	if get_stream() != audioA:
		_change_track(audioA)
	else: 
		change_track = false

func _on_ChangeTrack_trackb():
	if get_stream() != audioB:
		_change_track(audioB)
	else: 
		change_track = false

