@tool
extends Path2D

@export var jump_height = 36.0:
	set(value):
		jump_height = value
		curve.set_point_position(1, Vector2(0, -jump_height))
