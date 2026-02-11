extends HBoxContainer
class_name Startmenubuttons

var Levelselector: PackedScene = load(Scenemanager.MenuPaths.levelselector)
var Stuffmenu: PackedScene = load(Scenemanager.MenuPaths.stuffmenu)
var Othersmenu: PackedScene = load(Scenemanager.MenuPaths.othersmenu)

#TODO add transitions between scenes, optimize level loading with packedscenes mayb
func _on_play_pressed() -> void:
	get_tree().change_scene_to_packed(Levelselector) 

func _on_stuff_pressed() -> void:
	get_tree().change_scene_to_packed(Stuffmenu)

func _on_others_pressed() -> void:
	get_tree().change_scene_to_packed(Othersmenu)
