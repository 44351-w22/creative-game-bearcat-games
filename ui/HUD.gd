extends CanvasLayer

onready var score_label = $Score
onready var world = $World

func update_score(score):
	pass
	print("update")
	score_label.text = str(score)
