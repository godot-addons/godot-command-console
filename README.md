Godot Command console
======================

This addon is intended to be a generic game/developer console, enabling debug options or running various commands to control your Godot game.

Usage
=====

Simply attach an instance of the console scene to your game.ui node.

Some assumptions are made about your scene tree:

- game
  - ui
    - console
    - debug
    - hud

If your scene tree does not follow this pattern, you will have to make some manual tweaks to the commands.

Set Command
===========

Set is a command, which proxies/creates sub-commands.

```
/set your_command param1 param2 param3...
```

The set command will take `your_command` and expect that to be a command to instantiate and pass the parameters to.

This is simply a quality of life type thing versus having separate set_your_command commands.

```
/set_target_fps 123
/set_some_other thing to this value
```
vs
```
/set target_fps 123
/set some_other thing to this value
```

The set command will also handle some error handling to only allow configured sub-commands.

Example Video
=============

You can view a demo of the console here:

https://youtu.be/HkeQNsK9FRs
