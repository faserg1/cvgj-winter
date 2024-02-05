extends BasicConsumable

class_name Flower

@onready var area_touch = $AreaTouch
@onready var cylinder: MeshInstance3D = $Flower/Cylinder

const OVERRIDE_HIDE = preload("res://resources/materials/override_hide.tres")

func _ready():
	GlobalState.turn_state.turn_changed.connect(_on_turn_changed)
	_on_turn_changed(GlobalState.turn_state.turn_current)
	try_consume.connect(on_try_consume)

func _process(delta):
	pass
	
func on_try_consume():
	if GlobalState.turn_state.get_season() != GlobalStateClass.Season.SPRING:
		return
	consumed = true
	have_consumed.emit()
	_on_turn_changed(GlobalState.turn_state.turn_current)

func _on_turn_changed(_turn: int):
	match GlobalState.turn_state.get_season():
		GlobalStateClass.Season.WINTER:
			consumed = false
		GlobalStateClass.Season.SPRING:
			get_tree().create_tween().tween_property(self, "scale:y", 1, 1)
		GlobalStateClass.Season.SUMMER:
			pass
		GlobalStateClass.Season.FALL:
			get_tree().create_tween().tween_property(self, "scale:y", 0.1, 1)

	area_touch.visible = !consumed && GlobalState.turn_state.get_season() == GlobalStateClass.Season.SPRING
	var show_petals = !consumed && GlobalState.turn_state.get_season() == GlobalStateClass.Season.SPRING
	var show_head = !consumed && [GlobalStateClass.Season.SPRING, GlobalStateClass.Season.SUMMER]\
		.has(GlobalState.turn_state.get_season())
	var material_petals = null if show_petals else OVERRIDE_HIDE
	var material_head = null if show_head else OVERRIDE_HIDE
	cylinder.set_surface_override_material(1, material_head)
	cylinder.set_surface_override_material(2, material_petals)
