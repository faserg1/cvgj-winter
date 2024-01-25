@tool
extends EditorPlugin

const PLANET_DOCK = preload("res://addons/planet_plugin/scenes/planet_dock/planet_dock.tscn")

var planet_dock: PlanetDock

func _enter_tree():
	planet_dock = PLANET_DOCK.instantiate()
	add_control_to_dock(DOCK_SLOT_RIGHT_UL, planet_dock)

func _exit_tree():
	if planet_dock:
		remove_control_from_docks(planet_dock)
		planet_dock.free()
