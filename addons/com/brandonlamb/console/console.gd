extends Control

const CommandParser = preload("res://addons/com/brandonlamb/console/commands/command_parser.gd")
const CommandFactory = preload("res://addons/com/brandonlamb/console/commands/command_factory.gd")

onready var history = get_node("panel/history") setget n, get_history
onready var input = get_node("panel/input") setget n, get_input
onready var command_factory = CommandFactory.new(self) setget n, n
onready var command_parser = CommandParser.new()

func _ready():
	add_message("Console initialized")
	history.set_scroll_follow(true)
	hide()
	set_process_input(true)

func _input(event):
	if event.is_action_pressed("ui_toggle_console"):
		var hidden = is_hidden()

		if hidden:
			input.grab_focus()
		else:
			input.release_focus()

		set_hidden(!hidden)

# Run command, add to history
func send_message(text):
	if text == "" || text == null:
		input.release_focus()
		return

	history.add_text(text)
	history.newline()
	input.clear()

	run(text)

func run(text):
	var parsed_command = command_parser.parse(text)
	var command = command_factory.create(parsed_command.get_command())

	if command != null:
		command.run(parsed_command.get_args())
	else:
		add_message(text + " is not a valid command")

func n(): return
func get_history(): return history
func get_input(): return input

func add_message(text):
	history.append_bbcode(text)
	history.newline()

func _on_input_text_entered(text): send_message(text)
