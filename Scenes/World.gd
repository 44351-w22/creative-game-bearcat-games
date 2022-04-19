extends Node2D

onready var hud = $HUD
onready var spawner = $PlatformSpawner
signal new_game


var score = 0
var highscore = 0


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
	
