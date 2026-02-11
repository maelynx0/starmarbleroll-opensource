extends Control

var levelselector: PackedScene = preload(Scenemanager.MenuPaths.levelselector)
var gamecompleted: PackedScene = load(Scenemanager.MenuPaths.gamecompletedui)

func _ready() -> void:
	if Userdata.levelscompleted == 10:
		get_tree().change_scene_to_packed(gamecompleted)
	else:
		Audiomanager.audioplayer.volume_db = -100
		Audiomanager2.play_wintheme()

func _on_go_back_to_menu_pressed() -> void:
	Audiomanager2.audioplayer2.stop()
	Audiomanager.audioplayer.volume_db = -10
	get_tree().change_scene_to_packed(levelselector)
