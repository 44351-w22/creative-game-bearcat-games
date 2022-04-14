extends Node2D

onready var hud = $HUD


var score = 0


func player_score():
	print("poop")
	score += 1
	hud.update_score(score)



