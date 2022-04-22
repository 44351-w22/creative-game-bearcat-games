extends KinematicBody2D

var velocity = Vector2()
var speed = 200
export var direction = -1
signal die


func _ready():
	randomize()

func _physics_process(delta):
	velocity.x = speed * direction
	velocity = move_and_slide(velocity, Vector2.UP)
	if is_on_wall():
		direction *= -1

func _on_Area2D_body_entered(body):
	if body is Player:
		emit_signal("die")

func _on_Respawn_body_exited(body):
	global_position.x = randi()%900 + 65
	
	var num = randi()%3+1
	
	if num == 1:
		global_position.y = 1100
	if num == 2 || 3:
		global_position.y = 1050
	
