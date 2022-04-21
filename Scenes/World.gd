extends Node2D

onready var hud = $HUD
var Enemy = preload("res://Scenes/Enemy.tscn")
signal new_game


var score = 0
var highscore = 0

func _ready():
	randomize()

func player_score():
	score += 1
	hud.update_score(score)

func game_Over():
	
	if score >= highscore:
		highscore = score
		hud.update_highscore(highscore)
	
	score = 0
	emit_signal("new_game")
	hud.update_score(score)

func spawn_enemy():
	var enemy = Enemy.instance()
	var random = randi()%3 + 1
	if score % 4 == 0:
		if random == 1 || 2 || 3:
			add_child(enemy)
			print("ENEMY")
