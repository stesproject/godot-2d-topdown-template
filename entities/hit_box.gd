@tool
extends Area2D
class_name HitBox

var damage: int = 1

func _init() -> void:
  monitorable = true
  monitoring = false
  collision_mask = 0
  z_index = -1
