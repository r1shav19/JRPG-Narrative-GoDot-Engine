extends Node

var quests = {}


func start_quest(id):

	if quests.has(id):
		return

	quests[id] = "started"

	print("QUEST STARTED:", id)


func complete_quest(id):

	if !quests.has(id):
		return

	quests[id] = "completed"

	print("QUEST COMPLETED:", id)


func is_started(id):

	if !quests.has(id):
		return false

	return quests[id] == "started"


func is_completed(id):

	if !quests.has(id):
		return false

	return quests[id] == "completed"
