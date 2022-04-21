extends KinematicBody2D

var velocity = Vector2()
var speed = 200
export var direction = -1


func _ready():
	pass

func _physics_process(delta):
	velocity.x = speed * direction
	velocity = move_and_slide(velocity, Vector2.UP)
	if is_on_wall():
		direction *= -1
