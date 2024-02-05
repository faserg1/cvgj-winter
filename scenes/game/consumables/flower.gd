extends Node3D

@onready var area_touch = $AreaTouch
@onready var cylinder: MeshInstance3D = $Flower/Cylinder

var consumed = false

const OVERRIDE_HIDE = preload("res://resources/materials/override_hide.tres")

func _ready():
	GlobalState.turn_state.turn_changed.connect(_on_turn_changed)

func _process(delta):
	pass


func _on_turn_changed(_turn: int):
	match GlobalState.turn_state.get_season():
		GlobalStateClass.Season.WINTER:
			consumed = false
		GlobalStateClass.Season.SPRING:
			get_tree().create_tween().tween_property(self, "scale:y", 1, 1)
			area_touch.visible = true
		GlobalStateClass.Season.SUMMER:
			area_touch.visible = false
		GlobalStateClass.Season.FALL:
			get_tree().create_tween().tween_property(self, "scale:y", 0.1, 1)

	var show_head = !consumed && GlobalState.turn_state.get_season() == GlobalStateClass.Season.SPRING
	var material_head = null if show_head else OVERRIDE_HIDE
	cylinder.set_surface_override_material(1, material_head)
	cylinder.set_surface_override_material(2, material_head)
