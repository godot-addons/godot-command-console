extends Node

var slash_command = "" setget n, get_slash_command
var command = "" setget n, get_command
var args = [] setget n, get_args
var original = "" setget n, get_original

func _init(args_):
	original = args_

	var a = args_.split(" ")
	if a.size() > 0:
		slash_command = a[0]
		var r = RegEx.new()
		r.compile("\\/(\\w+)")
		r.find(slash_command)
		command = r.get_capture(1)
		a.remove(0)

	# Assign remaining strings to args
	args = a

func n(): return
func get_slash_command(): return slash_command
func get_command(): return command
func get_args(): return args
func get_original(): return original
