extends StaticBody3D

@onready var front_shape_winter = $FrontShapeWinter
@onready var back_shape_winter = $BackShapeWinter
@onready var snow_visuals = $SnowVisuals


# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalState.turn_state.turn_changed.connect(_on_turn_changed)
	_on_turn_changed(GlobalState.turn_state.turn_current)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_turn_changed(_turn: int):
	var is_winter = GlobalState.turn_state.get_season() == GlobalStateClass.Season.WINTER
	get_tree().create_tween().tween_property(front_shape_winter, "position:y", 0 if is_winter else -2, 1)
	get_tree().create_tween().tween_property(back_shape_winter, "position:y", 0 if is_winter else -2, 1)
	get_tree().create_tween().tween_property(snow_visuals, "position:y", 0 if is_winter else -2, 1)
