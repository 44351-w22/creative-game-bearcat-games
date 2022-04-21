extends RigidBody2D
class_name Player

onready var animator = $AnimationPlayer
signal start
signal died
signal new_game
var started = false
export var SPEED = 725

func new_game():
	animator.play("Parachute Full")
	started = false
	global_position.y = 0
	global_position.x = 505
	linear_velocity.y = 0
	gravity_scale = 0
	emit_signal("new_game")

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
	if global_position.y >= 1250:
		global_position.y = 0
		

func start():
	started = true
	gravity_scale = 1
	linear_velocity.y = 500
	animator.play("Idle")
	emit_signal("start")

