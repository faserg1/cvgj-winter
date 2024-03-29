extends CanvasLayer

const MAIN_MENU_FILE = "res://scenes/menu/main/main_menu.tscn"
@onready var control_root = $ControlRoot

func _ready():
	control_root.visible = false

func _process(_delta):
	pass

func _input(event):
	if event.is_action_pressed("pause"):
		_toggle_pause()

func _toggle_pause():
	control_root.visible = !control_root.visible
	get_tree().paused = control_root.visible
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE if control_root.visible else Input.MOUSE_MODE_CAPTURED

func _on_resume_pressed():
	control_root.visible = false
	get_tree().paused = false
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _on_exit_pressed():
	get_viewport().set_input_as_handled()
	get_tree().change_scene_to_file(MAIN_MENU_FILE)
