@icon("../icons/StateEntity.svg")
extends BaseState
##Base class for all entity states.
class_name StateEntity

var entity: CharacterEntity ##The entity to apply this state. If left empty and this state is child of a CharacterEntity, that entity will be taken.
var entity_name := ""

func enter() -> void:
	super.enter()
	if not entity:
		entity = _try_to_get_entity(self)
	if entity:
		entity_name = entity.name
		state_machine.params.set("entity", entity)

func _try_to_get_entity(node):
	if state_machine.params.has("entity"):
		return state_machine.params["entity"]
	var parent = node.get_parent()
	if parent is CharacterEntity:
		return parent
	elif parent:
		return _try_to_get_entity(parent)
	else:
		return null
