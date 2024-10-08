extends BaseState
##Applies a material to a Sprite2D.
class_name StateMaterial

@export var sprite: Sprite2D = null
@export var material: Material = null

func enter():
	if sprite:
		sprite.material = material

func exit():
	if sprite:
		sprite.material = null
