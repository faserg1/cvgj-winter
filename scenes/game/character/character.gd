extends CharacterBody3D

const SPEED = 5.0
const JUMP_VELOCITY = 4.5

const RUN_ANIMATION = "Anim_Knight_RunWithSword01/Anim_Knight_RunWithSword01"
const IDLE_ANIMATION = "Anim_Knight_Idle01/Anim_Knight_Idle01"

const JUMP_ANIMATION = "Anim_Knight_Jump01/Anim_Knight_Jump"
const FALL_LOOP_ANIMATION = "Anim_Knight_Jump01/Anim_Knight_FallLoop01"
const JUMP_LOOP_ANIMATION = "Anim_Knight_Jump01/Anim_Knight_JumpLoop01"
#const JUMP_ANIMATION = "Anim_Knight_Jump01/Anim_Knight_Jump"
#const JUMP_ANIMATION = "Anim_Knight_Jump01/Anim_Knight_Jump"
#const JUMP_ANIMATION = "Anim_Knight_Jump01/Anim_Knight_Jump"

@onready var animation_player: AnimationPlayer = $"Root Scene/AnimationPlayer"

func _process(delta):
	pass

func _physics_process(delta):
	var gravity = PhysicsServer3D.body_get_direct_state(get_rid()).total_gravity
	
	if gravity.length() > 0.1:
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
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()

func _input(event):
	if event is InputEventMouseMotion:
		_handle_mouse_motion(event)
		
func _handle_mouse_motion(event: InputEventMouseMotion):
	pass
