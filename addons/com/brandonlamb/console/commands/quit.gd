extends Node

var console setget n, n

func _init(console_): console = console_
func n(): return

func run(args):
	console.add_message("[b][color=yellow]quit game[/color][/b]")
	get_tree().quit()
