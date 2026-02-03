extends Area2D

class_name Player

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D



@export var movement_speed: float = 75

var max_bombs_at_once = 1

var movement: Vector2 = Vector2.ZERO

func _process(delta: float) -> void:

	position += movement * delta * movement_speed

func _input(event: InputEvent) -> void:
	if Input.is_action_pressed("right"):
		print("right")
		movement = Vector2.RIGHT
		animated_sprite_2d.play("walk_right")
	elif Input.is_action_pressed("left"):
		movement = Vector2.LEFT
		animated_sprite_2d.play("walk_left")
	elif Input.is_action_pressed("up"):
		movement = Vector2.UP
		animated_sprite_2d.play("walk_up")
	elif Input.is_action_pressed("down"):
		movement = Vector2.DOWN
		animated_sprite_2d.play("walk_down")

	else:
		movement = Vector2.ZERO
		animated_sprite_2d.stop()
