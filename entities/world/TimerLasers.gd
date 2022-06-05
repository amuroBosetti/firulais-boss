extends Timer

func _on_TimerLasers_timeout():
	for child in get_children():
		child.timeout()
