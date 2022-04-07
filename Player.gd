extends RigidBody2D

onready var animator = $AnimationPlayer

var started = false


export var SPEED = 200


func _physics_process(delta):
	if Input.is_action_pressed("ui_action"):
		if !started:
			start()
	elif Input.is_action_pressed("ui_left"):
		animator.play("Left")
		linear_velocity.x = -SPEED
	elif Input.is_action_pressed("ui_right"):
		animator.play("Right")
		linear_velocity.x = SPEED
	else:
		animator.play("Idle")
		linear_velocity.x = 0
		

func start():
	if started: return
	started = true
	gravity_scale = 3.0
	animator.play("Idle")
