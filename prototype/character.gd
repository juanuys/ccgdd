
extends Node

# A simple script to rotate the model.
onready var model = get_node(".")
const SPEED = 40

func _process(delta):
	model.rotation_degrees.y += delta * SPEED
