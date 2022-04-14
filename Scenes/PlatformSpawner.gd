extends Node2D

signal platform_created(obs)

onready var Platform = preload("res://Scenes/Platforms.tscn")
onready var platform = Platform.instance()

func _ready():
	randomize()
	$Platforms.position.x = randi()%497 + 263
	$Platforms.position.y = 750


func _on_Platforms_remove():
	$Platforms.queue_free()
	_on_Platforms_spawn()

func _on_Platforms_spawn():
	print("spawned")
	self.add_child($Platforms)
	$Platforms.position.x = randi()%497 + 263
	$Platforms.position.y = 750
