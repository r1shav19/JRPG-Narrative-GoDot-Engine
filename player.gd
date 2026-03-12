extends CharacterBody2D

@export var speed = 120

@onready var sprite = $AnimatedSprite2D


func _physics_process(delta):

	var direction = Vector2.ZERO

	direction.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	direction.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")

	velocity = direction * speed
	move_and_slide()

	update_animation(direction)


func update_animation(direction):

	if direction == Vector2.ZERO:
		sprite.stop()
		return

	if abs(direction.x) > abs(direction.y):

		if direction.x > 0:
			sprite.play("walk_right")
		else:
			sprite.play("walk_left")

	else:

		if direction.y > 0:
			sprite.play("walk_down")
		else:
			sprite.play("walk_up")
