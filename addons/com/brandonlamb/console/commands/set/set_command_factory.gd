const COMMANDS = ["screen", "target_fps", "vsync"]

var console
var commands = {}

func _init(console_):
	print("SetCommandFactory._init()")
	console = console_

	for i in COMMANDS:
		commands[i] = load("res://addons/com/brandonlamb/console/commands/set/set_" + i + ".gd")

func create(name):
	console.add_message("SetCommandFactory.create(%s)" % name)
	if name in COMMANDS: return commands[name].new(console)
