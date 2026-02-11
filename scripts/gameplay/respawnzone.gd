extends Area2D
 
@onready var spawn := $"../Spawnpoint" as Marker2D
@onready var marblec := $"../Marble" as RigidBody2D

func _on_marble_entered(body: RigidBody2D) -> void:
	if body.name == "Marble":
		Audiomanager2.play_fallsfx()
		marblec.global_transform.origin = spawn.global_transform.origin
		marblec.linear_velocity = Vector2(0, 0)
		Userdata.timesrespawned += 1
	elif body.name.contains("RigidBody2D"):
		pass
