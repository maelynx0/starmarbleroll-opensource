extends Marker2D

@onready var marbleb := $"../Marble" as RigidBody2D
@onready var spawn := $"../Spawnpoint" as Marker2D

func _ready() -> void:
	var spawnloc: Vector2 = spawn.global_transform.origin
	marbleb.global_transform.origin = spawnloc
