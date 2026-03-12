extends CanvasLayer

@onready var label = $Panel/Label
@onready var choices_container = $Panel/Choices

var current_choices = []
var selected = 0
var dialogue_active = false


func show_dialogue(text, choices):

	label.text = text

	current_choices = choices
	selected = 0

	dialogue_active = true
	visible = true

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

	if !dialogue_active:
		return

	if event.is_action_pressed("ui_down") and current_choices.size() > 0:
		selected = min(selected + 1, current_choices.size() - 1)
		update_choices()

	elif event.is_action_pressed("ui_up") and current_choices.size() > 0:
		selected = max(selected - 1, 0)
		update_choices()

	elif event.is_action_pressed("dialogue_select"):

		# if there are choices → go to next node
		if current_choices.size() > 0:
			get_parent().get_node("NarrativeManager").choose(selected)

		# if no choices → close dialogue
		else:
			dialogue_active = false
			visible = false
