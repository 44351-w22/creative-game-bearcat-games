extends RigidBody2D
class_name Player

onready var animator = $AnimationPlayer

var started = false


export var SPEED = 700


func _physics_process(delta):
	linear_velocity.x = 0
	if Input.is_action_pressed("ui_action"):
		if !started:
			start()
	elif Input.is_action_pressed("ui_left"):
		animator.play("Left")
		linear_velocity.x = -SPEED
	elif Input.is_action_pressed("ui_right"):
		animator.play("Right")
		linear_velocity.x = SPEED
	elif linear_velocity.y > 0:
		animator.play("Idle")
	if global_position.y >= 2500:
		global_position.y = 0
		

func start():
	if started: return
	started = true
	gravity_scale = 1
	linear_velocity.y = 500
	animator.play("Idle")
