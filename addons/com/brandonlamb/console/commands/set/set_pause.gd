extends Node

var console setget n, n

func _init(console_): console = console_
func n(): return

func run(args):
	if args.size() == 0:
		console.add_message("[b][color=yellow]Usage: /setvsync 0|1|true|false[/color][/b]")
		return

	var x = args[0]

	if x == "0" || x == "false":
		console.add_message("Unpause Game")
	elif x == "1" || x == "true":
		console.add_message("Pause Game")
