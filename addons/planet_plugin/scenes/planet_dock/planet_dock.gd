@tool
extends VBoxContainer

class_name PlanetDock

const PLANET_ROOT = preload("res://addons/planet_plugin/scenes/planet/planet_root.tscn")

@onready var add_planet_btn = $AddPlanetBtn

func _ready():
	pass

func _enter_tree():
	EditorInterface.get_selection().selection_changed.connect(_editor_selection_changed)

func _process(delta):
	pass

func _editor_selection_changed():
	var nodes = EditorInterface.get_selection().get_transformable_selected_nodes()
	if nodes.size() != 1:
		return
	var node = nodes[0]
	add_planet_btn.disabled = !(node is Node3D)
	

func _on_add_planet_btn_pressed():
	var nodes = EditorInterface.get_selection().get_transformable_selected_nodes()
	if nodes.size() != 1:
		return
	var node = nodes[0]
	var planet: Node3D = PLANET_ROOT.instantiate()
	node.add_child(planet)
	planet.owner = node
