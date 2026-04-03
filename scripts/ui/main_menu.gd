extends Control

signal start_game_pressed(character_id: String)

@onready var class_picker: OptionButton = %ClassPicker

func _ready() -> void:
	_populate_picker()

func _populate_picker() -> void:
	class_picker.clear()
	class_picker.add_item("Schwertkämpfer", 0)
	class_picker.add_item("Bogenschütze", 1)
	class_picker.add_item("Magier", 2)

func _on_start_button_pressed() -> void:
	var idx := class_picker.get_selected_id()
	var character_id := "swordsman"
	if idx == 1:
		character_id = "archer"
	elif idx == 2:
		character_id = "mage"
	start_game_pressed.emit(character_id)
