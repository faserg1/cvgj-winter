extends CharacterBody3D

const SPEED = 5.0
const ACCELERATION = 20.0
const JUMP_VELOCITY = 4.5
const LOOKAROUND_SPEED = 0.001
const FLIP_CAMERA_Y = 1
# const FLIP_CAMERA_Y = -1

const RUN_ANIMATION = "Anim_Knight_RunWithSword01/Anim_Knight_RunWithSword01"
const IDLE_ANIMATION = "Anim_Knight_Idle01/Anim_Knight_Idle01"

const JUMP_ANIMATION = "Anim_Knight_Jump01/Anim_Knight_Jump"
const FALL_LOOP_ANIMATION = "Anim_Knight_Jump01/Anim_Knight_FallLoop01"
const JUMP_LOOP_ANIMATION = "Anim_Knight_Jump01/Anim_Knight_JumpLoop01"
#const JUMP_ANIMATION = "Anim_Knight_Jump01/Anim_Knight_Jump"
#const JUMP_ANIMATION = "Anim_Knight_Jump01/Anim_Knight_Jump"
#const JUMP_ANIMATION = "Anim_Knight_Jump01/Anim_Knight_Jump"

@onready var animation_player: AnimationPlayer = $"Rotated/Root Scene/AnimationPlayer"


@export var camera_distance: float = 4

var camera_height: float = 0
var camera_rotation: float = 0

@onready var canera_look_at = $Rotated/CaneraLookAt
@export var camera_3d : Camera3D
@export var camera_spring_arm : SpringArm3D
@export var camera_root : Node3D

@onready var debug_velocity: MeshInstance3D = $DebugVelocity
@onready var debug_gravity: MeshInstance3D = $DebugGravity
@onready var debug_forward = $DebugForward
@onready var debug_up = $DebugUp
@onready var debug_right = $DebugRight

var current_planet_area: AreaGravity
var vec_forward = Vector3()
var vec_right = Vector3()
var vel_gravity = Vector3()
var vec_up = Vector3()

var calculated_basis: Basis = Basis()

@onready var rotated = $Rotated

var curent_consumable: BasicConsumable

func _process(delta):
	
	var gravity = PhysicsServer3D.body_get_direct_state(get_rid()).total_gravity
	
	_debug_draw_line(debug_velocity, velocity)
	_debug_draw_line(debug_gravity, gravity)
	_debug_draw_line(debug_forward, vec_forward)
	_debug_draw_line(debug_up, up_direction)
	_debug_draw_line(debug_right, vec_right)

func _debug_draw_line(mesh_instance: MeshInstance3D, target: Vector3):
	var mesh = mesh_instance.mesh as ImmediateMesh
	var gzero = Vector3()
	
	mesh.clear_surfaces()
	mesh.surface_begin(Mesh.PRIMITIVE_LINES)
	mesh.surface_add_vertex(gzero)
	mesh.surface_add_vertex((target*mesh_instance.global_transform.basis) * 2)
	mesh.surface_end()

func _physics_process(delta):
	_handle_physics(delta)
	_handle_camera(delta)

func _handle_physics(delta: float):
	var gravity = PhysicsServer3D.body_get_direct_state(get_rid()).total_gravity
	if not gravity.is_zero_approx():
		up_direction = -gravity.normalized()
	var horizontal_plane : Plane = Plane(up_direction)
	# Add the gravity.
	velocity += gravity * delta
	
	# Handle jump.
	var jump_pressed = Input.is_action_just_pressed("jump")
	if jump_pressed and is_on_floor():
		velocity += up_direction * JUMP_VELOCITY
	
	var speed_mul = 1
	
	if Input.is_action_pressed("boost") and is_on_floor():
		speed_mul = 2
	
	var input_dir : Vector2 = Input.get_vector("left", "right", "back", "forward")
	
	if is_on_floor():
		if not input_dir.is_zero_approx():
			animation_player.current_animation = RUN_ANIMATION
		else:
			animation_player.current_animation = IDLE_ANIMATION
	else:
		if animation_player.current_animation != JUMP_LOOP_ANIMATION:
			animation_player.current_animation = JUMP_LOOP_ANIMATION
	
	var right_direction : Vector3 = horizontal_plane.project(camera_3d.global_transform.basis.x).normalized()
	var forward_direction : Vector3 = up_direction.cross(right_direction).normalized()
	if right_direction.is_zero_approx():
		forward_direction = horizontal_plane.project(-camera_3d.global_transform.basis.z).normalized()
		right_direction = forward_direction.cross(up_direction).normalized()
	
	var horizontal_velocity : Vector3 = horizontal_plane.project(velocity)
	var vertical_velocity : Vector3 = velocity - horizontal_velocity
	
	var target_horizontal_velocity = forward_direction*input_dir.y + right_direction*input_dir.x
	target_horizontal_velocity *= SPEED*speed_mul
	print(target_horizontal_velocity.length())
	horizontal_velocity = horizontal_velocity.move_toward(target_horizontal_velocity, ACCELERATION*delta)
	velocity = vertical_velocity + horizontal_velocity
	
	move_and_slide()

	if current_planet_area:
		var zero_global = to_global(Vector3())
		var current_basis : Basis = rotated.global_transform.basis
		var new_basis : Basis = Basis.IDENTITY
		new_basis.y = up_direction
		var current_forward = current_basis.x
		if not horizontal_velocity.is_zero_approx():
			current_forward = horizontal_velocity.normalized()
		new_basis.x = horizontal_plane.project(current_forward).normalized()
		new_basis.z = new_basis.x.cross(new_basis.y)
		rotated.global_transform.basis = new_basis
		vec_forward = rotated.transform.basis.x
		vec_right = rotated.transform.basis.z

func _handle_camera(delta: float):
	var camera_root_basis : Basis = camera_root.global_transform.basis
	var new_basis : Basis = Basis.IDENTITY
	new_basis.y = up_direction
	var horizontal_plane : Plane = Plane(up_direction)
	new_basis.z = horizontal_plane.project(camera_root_basis.z).normalized()
	new_basis.x = new_basis.y.cross(new_basis.z)
	camera_root.global_transform.basis = new_basis


func _input(event):
	if event is InputEventMouseMotion:
		_handle_mouse_motion(event)
		
func _unhandled_input(event: InputEvent):
	if event.is_action_pressed("use"):
		print("fe! fe!")
		if curent_consumable:
			curent_consumable.consume()

func _handle_mouse_motion(event: InputEventMouseMotion):
	var rot = camera_spring_arm.rotation
	rot.y += -event.relative.x * LOOKAROUND_SPEED
	rot.x += -event.relative.y * LOOKAROUND_SPEED*FLIP_CAMERA_Y
	rot.x = clamp(rot.x, -PI/2, PI/16)
	camera_spring_arm.rotation = rot
	


func _on_collide_area_area_entered(area):
	if area is AreaGravity:
		current_planet_area = area
	check_consumable(area)

func _on_collide_area_area_exited(area):
	if area is AreaGravity && area == current_planet_area:
		current_planet_area = null
	check_consumable(area)

func check_consumable(area: Area3D, enter = true):
	if !(area.get_parent_node_3d() is BasicConsumable):
		return
	print("meow")
	if enter:
		curent_consumable = area.get_parent_node_3d() as BasicConsumable
	else:
		curent_consumable = null
	
