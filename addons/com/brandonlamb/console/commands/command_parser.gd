func parse(args_):
	var original = args_
	var slash_command
	var command
	var args

	var args = args_.split(" ")
	if args.size() > 0:
		slash_command = args[0]
		var r = RegEx.new()
		r.compile("\\/(\\w+)")
		r.find(slash_command)
		command = r.get_capture(1)
		args.remove(0)

	return Command.new(original, slash_command, command, args)

class Command:
	var original setget n, get_original
	var slash_command setget n, get_slash_command
	var command setget n, get_command
	var args setget n, get_args

	func _init(original_, slash_command_, command_, args_):
		original = original_
		slash_command = slash_command_
		command = command_
		args = args_

	func n(): return
	func get_slash_command(): return slash_command
	func get_command(): return command
	func get_args(): return args
	func get_original(): return original
