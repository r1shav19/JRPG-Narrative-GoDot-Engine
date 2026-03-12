extends CanvasLayer

@onready var label = $Label

var lines = [
	"Hello traveler! What do you want?",
	"I'm just a villager trying to survive.",
	"Safe travels!"
]

var index = 0

func _ready():
	label.text = lines[index]

func _input(event):
	if event.is_action_pressed("ui_accept"):
		index += 1
		if index >= lines.size():
			index = 0
		label.text = lines[index]
