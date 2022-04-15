extends Node2D

signal spawn
signal score

func _on_Platform_body_entered(body):
	if body is Player:
		print("die")
		if body.has_method("die"):
			body.die()

func _on_ScoreArea_body_exited(body):
	if body is Player:
		print("spawn")
		emit_signal("spawn")


func _on_ScoreArea_body_entered(body):
	if body is Player:
		emit_signal("score")
		print("score")
