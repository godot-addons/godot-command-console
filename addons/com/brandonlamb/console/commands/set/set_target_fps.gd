extends Node

var console setget n, n

func _init(console_): console = console_
func n(): return

func run(args):
	if args.size() == 0:
		console.add_message("[b][color=yellow]Usage: /set target_fps integer[/b]")
		return

	var fps = int(args[1])
	print("set_target_fps %d" % fps)
	OS.set_target_fps(fps)
