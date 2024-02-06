extends Area3D

class_name AreaGravity

@onready var gravity_shape: CollisionShape3D = $GravityShape
@onready var debug_target = $DebugTarget
@onready var debug_forward = $DebugForward

var vec_target = Vector3()
var vec_forward = Vector3()

func _ready():
	pass

func _process(delta):
	var mesh = debug_target.mesh as ImmediateMesh
	var mesh2 = debug_forward.mesh as ImmediateMesh
	
	mesh.clear_surfaces()
	mesh.surface_begin(Mesh.PRIMITIVE_LINES)
	mesh.surface_add_vertex(Vector3(0, 0, 0))
	mesh.surface_add_vertex(vec_target)
	mesh.surface_end()
	
	mesh2.clear_surfaces()
	mesh2.surface_begin(Mesh.PRIMITIVE_LINES)
	mesh2.surface_add_vertex(Vector3(0, 0, 0))
	mesh2.surface_add_vertex(vec_forward)
	mesh2.surface_end()
	
