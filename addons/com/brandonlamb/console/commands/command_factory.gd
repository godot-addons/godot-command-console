const COMMANDS = {
	"console": preload("res://addons/com/brandonlamb/console/commands/console.gd"),
	"debug": preload("res://addons/com/brandonlamb/console/commands/debug.gd"),
	"echo": preload("res://addons/com/brandonlamb/console/commands/echo.gd"),
	"hud": preload("res://addons/com/brandonlamb/console/commands/hud.gd"),
	"ping": preload("res://addons/com/brandonlamb/console/commands/ping.gd"),
	"set": preload("res://addons/com/brandonlamb/console/commands/set.gd"),
	"quit": preload("res://addons/com/brandonlamb/console/commands/quit.gd")
}

var console setget n, n

func _init(console_):
	print("CommandFactory initialized")
	console = console_

func n(): return

func create(name):
	if name in COMMANDS:
		return COMMANDS[name].new(console)
