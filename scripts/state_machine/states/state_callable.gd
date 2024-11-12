extends BaseState
##Call a method by name from any node.
class_name StateCallable

@export var node: Node2D ##The node from which to call the method.
@export var method_name: String ##The name of the method to call in the node.
@export var send_sm_params := true ##If true, it will call the method sending the params present in the state machine.

func enter():
	_call_method_by_name()

func _call_method_by_name():
	var callable = Callable(node, method_name)
	if is_instance_valid(node) and callable.is_valid():
		print("Calling method %s from %s" %[method_name, node.name])
		if send_sm_params:
			callable.call(state_machine.params)
		else:
			callable.call()
	else:
		print("Invalid method name")