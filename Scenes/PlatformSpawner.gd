extends Node2D

signal scored
signal game_over


func _ready():
	randomize()
	$Platforms.position.x = randi()%497 + 263

func _on_Platforms_spawn():
	$Platforms.position.x = randi()%497 + 263

func _on_Platforms_score():
	emit_signal("scored")

func _on_Platforms_die():
	emit_signal("game_over")
