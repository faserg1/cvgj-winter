@tool
extends Node3D

class_name PlanetRoot

@onready var planet_mesh = $PlanetMesh
@onready var gravity_shape = $AreaGravity/GravityShape
@onready var area_gravity = $AreaGravity
@onready var area_collision = $AreaCollision
@onready var collision_shape = $AreaCollision/CollisionShape

@export var radius: float:
	set(value):
		radius = value
		var everything = [planet_mesh, gravity_shape, area_gravity, area_collision, collision_shape]
		if everything.any(func neg(x): return !x):
			return
		var insides = [planet_mesh.mesh, gravity_shape.shape, collision_shape.shape]
		if insides.any(func neg(x): return !x):
			return
		(planet_mesh.mesh as IcoSphereMesh).heigth = radius * 2
		(planet_mesh.mesh as IcoSphereMesh).radius = radius
		(planet_mesh.mesh as IcoSphereMesh).edge_count = radius/TAU
		(gravity_shape.shape as SphereShape3D).radius = radius * 2
		(collision_shape.shape as SphereShape3D).radius = radius
		area_gravity.gravity_point_unit_distance = radius
		

var cached_radius: float

func _ready():
	pass

func _process(delta):
	pass
