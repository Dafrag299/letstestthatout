extends Node

@onready var menu: Control = $MainMenu
@onready var game: Node2D = $Game

func _ready() -> void:
	_show_menu()

func _show_menu() -> void:
	menu.visible = true
	game.visible = false

func _start_game(character_id: String) -> void:
	menu.visible = false
	game.visible = true
	if game.has_method("start_run"):
		game.start_run(character_id)
