@icon("../icons/StateDialogue.svg")
extends BaseState
##Starts a dialogue from DialogueManager.
class_name StateDialogue

@export var dialogue: DialogueResource
@export var title = ""

func enter():
	if dialogue:
		DialogueManager.show_dialogue_balloon(dialogue, title)
		await DialogueManager.dialogue_ended
		complete()
