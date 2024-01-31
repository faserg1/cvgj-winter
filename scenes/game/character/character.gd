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
@onready var debug_forward = $DebugForward
@onready var debug_up = $DebugUp
@onready var debug_right = $DebugRight

var current_planet_area: AreaGravity
var vec_forward = Vector3()
var vec_right = Vector3()
var vel_gravity = Vector3()
var vec_up = Vector3()

@onready var rotated = $Rotated

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
	mesh.surface_add_vertex((transform.basis * target) * 2)
	mesh.surface_end()

func _physics_process(delta):
	_handle_physics(delta)
	_handle_camera(delta)

func _handle_physics(delta: float):
	var gravity = PhysicsServer3D.body_get_direct_state(get_rid()).total_gravity
	
	if gravity.length() > 0.01:
		up_direction = -gravity.normalized()
		
	if current_planet_area:
		var zero_global = to_global(Vector3())
		var forward_and_up = current_planet_area.get_front_gvec_from_gpoint(zero_global)
		var g_forward = forward_and_up[0]
		var g_up = forward_and_up[1]
		vec_up = to_local(g_up).normalized() * transform.basis
		vec_forward = to_local(g_forward).normalized() * transform.basis
		var plane = Plane(up_direction)
		vec_forward = plane.project(vec_forward).normalized()
		vec_right = vec_forward.cross(up_direction)
		
		rotated.transform.basis = Basis(vec_forward, up_direction, vec_right.normalized())
		
	velocity = Vector3()
	
	var jump_pressed = Input.is_action_just_pressed("jump")
	
	# Add the gravity.
	if not is_on_floor():
		vel_gravity += gravity * delta
		
		if animation_player.current_animation != JUMP_LOOP_ANIMATION:
			animation_player.current_animation = JUMP_LOOP_ANIMATION
	else:
		vel_gravity = Vector3()

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity = up_direction * JUMP_VELOCITY
	
	var input_dir = Input.get_vector("left", "right", "forward", "back")
	
	if input_dir.length() > 0.1 and is_on_floor():
		animation_player.current_animation = RUN_ANIMATION
	else:
		animation_player.current_animation = IDLE_ANIMATION
	
	#var direction = (transform.basis * Vector3(-input_dir.y, 0, input_dir.x)).normalized()
	var direction = (Vector3(-input_dir.y, 0, input_dir.x)).normalized()
	if direction:
		#var vecyplane = Vector3(cos(rot_x), 0, sin(rot_x)) * 2
		#var up = transform.basis * Vector3(0, 1, 0)
		#look_at(to_global(vecyplane), up)
		velocity += direction * SPEED
	else:
		pass
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)
		
	velocity += vel_gravity

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
	var vecyplane = Vector3(cos(rot_x)* camera_distance, 1.5, sin(rot_x) * camera_distance)
	var up = transform.basis * Vector3(0, 1, 0)
	camera_3d.look_at_from_position(to_global(vecyplane), canera_look_at.global_position, up)


func _on_collide_area_area_entered(area):
	if area is AreaGravity:
		current_planet_area = area

func _on_collide_area_area_exited(area):
	if area is AreaGravity && area == current_planet_area:
		current_planet_area = null
