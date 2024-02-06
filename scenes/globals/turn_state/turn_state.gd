extends Node

class_name TurnState

signal turn_changed(turn: int)

var turn_current = 0
var turn_count = 16

var first_season: GlobalStateClass.Season

func next_turn():
	turn_current += 1
	turn_changed.emit(turn_current)

func get_season() -> GlobalStateClass.Season:
	return ((turn_current % 4) + first_season) as GlobalStateClass.Season
