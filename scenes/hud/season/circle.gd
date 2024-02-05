extends Node2D

@export var max_radius: float
@export var min_radius: float
@export var planet_radius: float

@export var orbit_color: Color
@export var sun_colors: Gradient
@export var planet_color: Color

@onready var turns_left = $TurnsLeft

var planet_radians: float = 0
var prev_turn = 0

const PLANET_SEASON_OFFSET = -PI/2

func _ready():
	check_for_season(false, true)

func _draw():
	draw_sun()
	draw_orbit()
	draw_planet()

func _process(delta):
	queue_redraw()
	check_for_season()
	update_turn_left()

func draw_sun():
	var turn_now = GlobalState.turn_state.turn_current
	var turn_count = GlobalState.turn_state.turn_count
	var weight = float(turn_now) / float(turn_count - 1)
	var sun_size = lerp(min_radius, max_radius, weight)
	var sun_color = sun_colors.sample(weight)
	draw_circle(Vector2(), sun_size, sun_color)
	
func draw_planet():
	var vec = Vector2(cos(planet_radians), sin(planet_radians)) * max_radius
	draw_circle(vec, planet_radius, planet_color)

func draw_orbit():
	draw_arc(Vector2(), max_radius, 0, TAU, 256, orbit_color, 2.2, true)

func check_for_season(animate = true, force = false):
	var turn_now = GlobalState.turn_state.turn_current
	var turn_count = GlobalState.turn_state.turn_count
	if prev_turn == turn_now and not force:
		return
	var radians = (turn_now + GlobalState.turn_state.first_season) * TAU / 4 + PLANET_SEASON_OFFSET
	if animate:
		var animation = get_tree().create_tween()
		animation.tween_property(self, "planet_radians", radians, 0.5)\
			.set_trans(Tween.TRANS_SINE)\
			.set_ease(Tween.EASE_IN_OUT)
	else:
		planet_radians = radians
	prev_turn = turn_now

func update_turn_left():
	var turn_now = GlobalState.turn_state.turn_current
	var turn_count = GlobalState.turn_state.turn_count
	turns_left.text = String.num(turn_count - turn_now)
