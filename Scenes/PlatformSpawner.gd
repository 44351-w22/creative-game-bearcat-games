extends Node2D

signal scored


func _ready():
	randomize()
	$Platforms.position.x = randi()%497 + 263
	$Platforms.position.y = 750

func _on_Platforms_spawn():
	$Platforms.position.x = randi()%497 + 263
	$Platforms.position.y = 750

func _on_Platforms_score():
	emit_signal("scored")
