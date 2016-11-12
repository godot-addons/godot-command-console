extends Node

var console setget n, n

func _init(console_): console = console_
func n(): return

func run(args):
	if args.size() == 0:
		console.add_message("[b][color=yellow]Usage: /set vsync 0|1|true|false[/color][/b]")
		return

	var x = args[1]

	if x == "0" || x == "false":
		OS.set_use_vsync(false)
	elif x == "1" || x == "true":
		OS.set_use_vsync(true)
