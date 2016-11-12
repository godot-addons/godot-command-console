extends Node

const SetCommandFactory = preload("res://addons/com/brandonlamb/console/commands/set/set_command_factory.gd")

var command_factory setget n, n
var console setget n, n

func _init(console_):
	console = console_
	command_factory = SetCommandFactory.new(console)

func n(): return

func run(args):
	if args.size() < 2: return console.add_message("[b][color=yellow]Set command not recognized[/color][/b]")

	var command = command_factory.create(args[0])
	command.run(args)
