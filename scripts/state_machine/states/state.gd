@icon("../icons/State.svg")
extends Node
##Base class for all states.
class_name State

@export var disabled := false ## Set to true to avoid processing this state.
@export_category("Advance")
## States to enable when this state completes or when timer times expires.[br]
## In a [i]StateInteract[/i] these are the states activated when the interaction is triggered.
@export var on_completion: Array[State]
@export_group("Await Timer")
@export var time_range := Vector2.ZERO ## If greater than 0, waits for N seconds before completing the state, where N is a random value between the minimum (x) and maximum (y) range.

var active := false: ## Indicates whether the state is currently active and being processed by the StateMachine.
	set(value):
		active = value
		if !Engine.is_editor_hint():
			process_mode = PROCESS_MODE_INHERIT if active else PROCESS_MODE_DISABLED
var state_machine: StateMachine:
	set(value):
		state_machine = value
		for state in get_children(true).filter(func(node): return node is State):
			state.state_machine = value
var timer: TimedState = null

func _enter_tree():
	if disabled:
		active = false
	elif time_range > Vector2.ZERO:
		timer = TimedState.new()
		timer.create(self, time_range)

func enable(params = null, sender = null): ## Enables this state.
	if params:
		state_machine.params = params
	state_machine.enable_state(self, sender)
	if timer:
		timer.start()
		await timer.timeout
		_enable_on_completion(params)

func disable(): ## Disables this state.
	if state_machine:
		state_machine.disable_state(self)

func enter():
	pass

func exit():
	pass

func update(_delta: float):
	pass

func physics_update(_delta: float):
	pass

func complete(params = null):
	if !timer:
		_enable_on_completion(params)

func _enable_on_completion(params):
	for state in on_completion:
		state.enable(state_machine.params if !params else params, self)

class TimedState:
	var timer: Timer
	var t_range: Vector2

	signal timeout

	func create(parent: Node, time_range: Vector2):
		if !timer:
			timer = Timer.new()
			timer.one_shot = true
			parent.add_child(timer)
			t_range = time_range
	
	func start():
		timer.stop()
		timer.wait_time = randf_range(t_range.x, t_range.y)
		timer.start()
		await timer.timeout
		timeout.emit()
