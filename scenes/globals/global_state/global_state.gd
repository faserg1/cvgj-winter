extends Node

class_name GlobalStateClass

@onready var turn_state = $TurnState

enum Season
{
	WINTER = 0,
	SPRING = 1,
	SUMMER = 2,
	FALL = 3
}

func next_turn():
	turn_state.turn_current += 1

#TODO: make sure to move that into controller
func _unhandled_input(event: InputEvent):
	if event.is_action_pressed("end_turn"):
		next_turn()
		get_viewport().set_input_as_handled()
