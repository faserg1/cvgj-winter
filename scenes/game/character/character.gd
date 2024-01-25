extends CharacterBody3D

const SPEED = 5.0
const JUMP_VELOCITY = 4.5
const LOOKAROUND_SPEED = 0.001

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
@onready var camera_3d = $Rotated/Camera3D

var rot_x = 0
var rot_y = 0

@onready var debug_velocity: MeshInstance3D = $DebugVelocity
@onready var debug_gravity: MeshInstance3D = $DebugGravity

func _process(delta):
	var mesh = debug_velocity.mesh as ImmediateMesh
	var mesh2 = debug_gravity.mesh as ImmediateMesh
	
	mesh.clear_surfaces()
	mesh.surface_begin(Mesh.PRIMITIVE_LINES)
	mesh.surface_add_vertex(Vector3(0, 0, 0))
	mesh.surface_add_vertex(velocity)
	mesh.surface_end()
	
	var gravity = PhysicsServer3D.body_get_direct_state(get_rid()).total_gravity
	
	mesh2.clear_surfaces()
	mesh2.surface_begin(Mesh.PRIMITIVE_LINES)
	mesh2.surface_add_vertex(Vector3(0, 0, 0))
	mesh2.surface_add_vertex(gravity)
	mesh2.surface_end()

func _physics_process(delta):
	_handle_physics(delta)
	_handle_camera(delta)

func _handle_physics(delta: float):
	var gravity = PhysicsServer3D.body_get_direct_state(get_rid()).total_gravity
	
	if gravity.length() > 0.01:
		up_direction = -gravity.normalized()
	
	var jump_pressed = Input.is_action_just_pressed("jump")
	
	# Add the gravity.
	if not is_on_floor():
		velocity += gravity * delta
		
		if animation_player.current_animation != JUMP_LOOP_ANIMATION:
			animation_player.current_animation = JUMP_LOOP_ANIMATION

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity = up_direction * JUMP_VELOCITY
	
	var input_dir = Input.get_vector("left", "right", "forward", "back")
	
	if input_dir.length() > 0.1 and is_on_floor():
		animation_player.current_animation = RUN_ANIMATION
	else:
		animation_player.current_animation = IDLE_ANIMATION
	
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		pass
		#velocity.x = direction.x * SPEED
		#velocity.z = direction.z * SPEED
	else:
		pass
		#velocity.x = move_toward(velocity.x, 0, SPEED)
		#velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()

func _handle_camera(delta: float):
	pass
	#var target = canera_look_at.position
	#var up = up_direction.normalized()
	#
	#var offset = Vector3(camera_distance, 0, 0)
	#var tr = Transform3D()
	#
	#camera_3d.look_at_from_position()

func _input(event):
	if event is InputEventMouseMotion:
		_handle_mouse_motion(event)
		
func _handle_mouse_motion(event: InputEventMouseMotion):
	rot_x += event.relative.x * LOOKAROUND_SPEED
	rot_y += -event.relative.y * LOOKAROUND_SPEED
	camera_3d.transform.basis = Basis() # reset rotation
	camera_3d.rotate_object_local(Vector3(0, 1, 0), rot_x) # first rotate in Y
	camera_3d.rotate_object_local(Vector3(-1, 0, 0), rot_y) # then rotate in X
