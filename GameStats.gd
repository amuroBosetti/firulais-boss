extends Node

var switch_tmp:Array
var stealable_tmp:Array
var stealed:Array

func _ready():
	switch_tmp = []
	stealable_tmp = []
	stealed = []

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
	if not switch_tmp.has(elem):
		stealable_tmp.append(elem)

func restart_game():
	_ready()
