extends Control

var levelselector: PackedScene = preload(Scenemanager.MenuPaths.levelselector)

func _ready() -> void:
	pass 

func _on_go_back_to_menu_pressed() -> void:
	get_tree().change_scene_to_packed(levelselector)
