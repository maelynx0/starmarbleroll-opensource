extends AnimatableBody2D

class_name Obstacle

@onready var spawn := $"../Spawnpoint" as Marker2D
@onready var marblec := $"../Marble" as RigidBody2D

func _on_body_entered(body: Marble2D) -> void:
	print("Respawning")
	marblec.global_transform.origin = spawn.global_transform.origin
	marblec.linear_velocity = Vector2(0, 0)
