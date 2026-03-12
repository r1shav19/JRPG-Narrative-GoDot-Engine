extends Node

var dialogue = {
	"start": {
		"text": "Hello traveler! What do you want?",
		"choices": [
			{"text": "Who are you?", "next": "who"},
			{"text": "Goodbye.", "next": "end"}
		]
	},

	"who": {
		"text": "I'm just a villager trying to survive.",
		"choices": [
			{"text": "Good luck.", "next": "end"}
		]
	},

	"end": {
		"text": "Safe travels!",
		"choices": []
	}
}

var current = "start"


func start_dialogue():
	print("START DIALOGUE CALLED")
	current = "start"
	show_current()


func choose(i):

	var c = dialogue[current]["choices"]

	if i >= c.size():
		return

	var next = c[i]["next"]

	# QUEST TRIGGER
	if next == "who":
		get_parent().get_node("QuestManager").start_quest("help_villager")

	current = next

	show_current()


func show_current():

	print("SHOW CURRENT CALLED")

	var text = dialogue[current]["text"]
	var c = dialogue[current]["choices"]

	get_parent().get_node("DialogueUI").show_dialogue(text, c)
