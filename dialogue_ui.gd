extends CanvasLayer

@onready var label = $Panel/Label
@onready var choices_container = $Panel/Choices

var current_choices = []
var selected = 0


func show_dialogue(text, choices):

	visible = true
	label.text = text

	current_choices = choices
	selected = 0

	update_choices()


func update_choices():

	for child in choices_container.get_children():
		child.queue_free()

	for i in range(current_choices.size()):

		var l = Label.new()

		if i == selected:
			l.text = "> " + current_choices[i]["text"]
		else:
			l.text = "  " + current_choices[i]["text"]

		choices_container.add_child(l)


func _input(event):

	if current_choices.size() == 0:
		return

	if event.is_action_pressed("ui_down"):
		selected = min(selected + 1, current_choices.size() - 1)
		update_choices()

	elif event.is_action_pressed("ui_up"):
		selected = max(selected - 1, 0)
		update_choices()

	elif event.is_action_pressed("dialogue_select"):
		get_parent().get_node("NarrativeManager").choose(selected)
