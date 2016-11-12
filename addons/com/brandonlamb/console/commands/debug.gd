extends Node

func _init(console_): pass

func run(args):
	var x = get_tree().get_root().get_node("game/ui/debug")
	x.set_hidden(!x.is_hidden())
