extends Node

class_name Inventory

var items = Dictionary()

func add_item(item: String):
	if !items.has(item):
		items[item] = 0
	items[item] += 1
	
func add_items(names: PackedStringArray):
	for item in names:
		add_item(item)

func get_items() -> PackedStringArray:
	return items.keys()

func remove_item(item: String):
	if !items.has(item):
		return
	items[item] -= 1
	if !items[item]:
		items.erase(item)
