extends CharacterBody2D

@export var interaction_distance = 100

var player
var narrative

func _ready():
	player = get_parent().get_node("Player")
	narrative = get_parent().get_node("NarrativeManager")


func _process(delta):

	if player == null:
		return

	var distance = global_position.distance_to(player.global_position)

	if distance < interaction_distance:

		if Input.is_action_just_pressed("ui_accept"):
			print("NPC interaction triggered")
			narrative.start_dialogue()
