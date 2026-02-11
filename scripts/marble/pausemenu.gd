extends Control

var levelselector: PackedScene = load(Scenemanager.MenuPaths.levelselector)
@onready var main := $"." as Control
@onready var marblec := $"../../../Marble" as RigidBody2D

func _on_pauselevelbutton_pressed():
	pause_or_unpause()

func _input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("pause"):
		pause_or_unpause()

func pause_or_unpause():
	if get_tree().paused == true:
		$".".hide()
		get_tree().paused = false
	elif get_tree().paused == false:
		$".".show()
		$".".position = marblec.transform.origin
		get_tree().paused = true

func _on_resume_pressed() -> void:
	$".".hide()
	get_tree().paused = false

func _on_exitlevel_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_packed(levelselector)
