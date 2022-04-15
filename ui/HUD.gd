extends CanvasLayer

onready var score_label = $Score
onready var world = $World
var score = 0

func update_score(score):
	score_label.text = str(score)
