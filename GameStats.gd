extends Node

var switch_tmp:Array
var stealed:Array
var all_stealable:Array #Array<StealableModel>
var time:float = 0.0

func _ready():
	switch_tmp = []
	stealed = []
	all_stealable = [] #Array<StealableModel>
	time = 0.0
	
func initialize(stealeables):
	all_stealable = stealeables

func reset():
	for elem in switch_tmp:
		elem.reset()
	switch_tmp = []
	for each in all_stealable:
		each.reset()

func checkpoint():
	switch_tmp = []
	for each in all_stealable:
		each.checkpoint()
	
func add_switch(elem:CameraSwitch):
	if not switch_tmp.has(elem):
		switch_tmp.append(elem)

func add_stealable(elem:Stealable):
	get_stealable_by_id(elem.get_id()).steal()

func add_time(time_to_add:float):
	time += time_to_add

func restart_game():
	_ready()
	
func finish_game():
	switch_tmp = []
	for each in all_stealable:
		each.checkpoint()

func get_stealable_by_id(id:String): # -> StealableModel
	for each in all_stealable:
		if each.id == id:
			return each
	printerr("No se encontro un robable con el id buscado")
