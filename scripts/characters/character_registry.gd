extends Node
class_name CharacterRegistry

var _characters := {
	"swordsman": preload("res://scripts/characters/classes/swordsman.gd").new(),
	"archer": preload("res://scripts/characters/classes/archer.gd").new(),
	"mage": preload("res://scripts/characters/classes/mage.gd").new(),
}

func get_character(character_id: String) -> CharacterDefinition:
	return _characters.get(character_id, _characters["swordsman"])

func list_ids() -> Array[String]:
	return _characters.keys()
