extends Node

var console setget n, n

func _init(console_): console = console_
func n(): return

func run(args):
	var x = get_tree().get_root().get_node("game/ui/hud")
	x.set_hidden(!x.is_hidden())
