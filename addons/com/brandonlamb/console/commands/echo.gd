var console setget n, n

func _init(console_): console = console_
func n(): return

func run(args):
	for i in args:
		console.add_message("echo: " + i)
