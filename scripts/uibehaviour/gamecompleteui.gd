extends Node

var levelselector: PackedScene = preload(Scenemanager.MenuPaths.levelselector)

func _ready() -> void:
	Audiomanager.audioplayer.volume_db = -100
	Audiomanager2.play_wintheme()

func _on_go_back_to_menu_pressed() -> void:
	Audiomanager2.audioplayer2.stop()
	Audiomanager.audioplayer.volume_db = -10
	get_tree().change_scene_to_packed(levelselector)
