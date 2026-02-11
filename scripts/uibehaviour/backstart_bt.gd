extends TextureButton

var Startmenu: PackedScene = load(Scenemanager.MenuPaths.startmenu)

func _pressed() -> void:
	get_tree().change_scene_to_packed(Startmenu)
