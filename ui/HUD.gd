extends CanvasLayer

onready var score_label = $Score
signal mute

func update_score(score):
	score_label.text = str(score)

func update_highscore(highscore):
	$HighScoreNum.text = str(highscore)

func _on_Player_start():
	$Start.hide()
	$HighScore.hide()
	$HighScoreNum.hide()

func _on_Player_new_game():
	$Start.show()
	$HighScore.show()
	$HighScoreNum.show()

