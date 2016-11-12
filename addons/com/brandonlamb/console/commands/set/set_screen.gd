extends Node

var console setget n, n

func _init(console_): console = console_
func n(): return

func run(args):
	if args.size() == 0:
		console.add_message("[b][color=yellow]Usage: /set screen screen_name[/color][/b]")
		return

	var game = console.get_tree().get_root().get_node("game")

	if args[1] in game.SCREENS:
		game.change_screen(args[1])
	else:
		console.add_message("[b][color=red]Invalid screen name[/color][/b]")
