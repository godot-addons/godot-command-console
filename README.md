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
