extends Node

var switch_tmp:Array
var stealable_tmp:Array
var stealed:Array
var all_stealable:Array
var time:float = 0.0

func _ready():
	switch_tmp = []
	stealable_tmp = []
	stealed = []
	all_stealable = []
	time = 0.0
	
func initialize(stealeables):
	all_stealable = stealeables

func reset():
	for elem in switch_tmp + stealable_tmp:
		elem.reset()
	stealable_tmp = []
	switch_tmp = []

func checkpoint():
	switch_tmp = []
	stealed.append_array(stealable_tmp)
	stealable_tmp = []
	
func add_switch(elem:CameraSwitch):
	if not switch_tmp.has(elem):
		switch_tmp.append(elem)

func add_stealable(elem:Stealable):
	if not stealable_tmp.has(elem):
		stealable_tmp.append(elem)

func add_time(time_to_add:float):
	time += time_to_add

func restart_game():
	_ready()
	
func finish_game():
	pass
