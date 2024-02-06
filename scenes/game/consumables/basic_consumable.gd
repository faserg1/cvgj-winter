extends Node3D

class_name BasicConsumable

signal try_consume()
signal have_consumed(items: PackedStringArray)

var consumed = false

func consume():
	try_consume.emit()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
