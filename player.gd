extends CharacterBody2D

@export var speed := 300

func _physics_process(delta):
	
	var dialogue = get_tree().get_first_node_in_group("dialogue")

	if dialogue and dialogue.visible:
		return

	var direction := Input.get_vector(
		"ui_left",
		"ui_right",
		"ui_up",
        "ui_down"
	)

	velocity = direction * speed

	move_and_slide()
