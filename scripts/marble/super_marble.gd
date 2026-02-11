extends RigidBody2D

class_name SuperMarble2D

var speed_factor: int = 25
var can_dash: bool = true
var timer_cooldown: float = 0.2
var is_dead: bool = false

func _process(_delta: float) -> void:
	if (can_dash):
		if Input.is_action_just_pressed("dash"):
			linear_velocity = Vector2(1, 1) #Adjust slipperiness
			var vel_vector = get_global_mouse_position() - global_position #get position it can use
			var normal_vel = vel_vector.normalized() #normalize for usage
			apply_central_impulse(normal_vel * speed_factor) #impulse to pos with said speed
			apply_torque_impulse(speed_factor * 2) #spin
			can_dash = false #cooldown
			get_tree().create_timer(timer_cooldown).timeout.connect(func(): can_dash = true)
	elif (!can_dash):
		pass
