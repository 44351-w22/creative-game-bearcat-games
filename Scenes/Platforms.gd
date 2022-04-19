extends Node2D

signal spawn
signal score
signal die

func _on_Platform_body_entered(body):
	if body is Player:
		emit_signal("die")

func _on_ScoreArea_body_exited(body):
	if body is Player:
		emit_signal("spawn")

func _on_ScoreArea_body_entered(body):
	if body is Player:
		emit_signal("score")
