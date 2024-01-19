extends Control

const MAIN_GAME = preload("res://scenes/game/main/main_game.tscn")

func _on_new_game_btn_pressed():
	get_tree().change_scene_to_packed(MAIN_GAME)

func _on_exit_btn_pressed():
	get_tree().quit()
