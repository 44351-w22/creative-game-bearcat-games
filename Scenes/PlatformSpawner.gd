extends Node2D

signal platform_created(obs)

onready var Platform = preload("res://Scenes/Platforms.tscn")
onready var platform = Platform.instance()

func _ready():
	randomize()
	self.add_child(platform)
	platform.position.x = randi()%497 + 263



func _on_Platforms_spawn():
	print("doofus")
	remove_child(platform)
	platform.queue_free()
	_ready()
