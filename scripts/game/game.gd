extends Node2D

@onready var player_spawn: Marker2D = $World/PlayerSpawn
@onready var player: CharacterBody2D = $World/Player

func start_run(character_id: String) -> void:
	if player.has_method("set_character"):
		player.set_character(character_id)
	player.global_position = player_spawn.global_position
