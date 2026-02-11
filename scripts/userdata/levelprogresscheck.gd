extends TextureButton

@onready var main = $"." as TextureButton
@onready var animplayer = $"../../../ColorRect/AnimationPlayer" as AnimationPlayer

func _ready() -> void:
	#var stringcomp = str(Userdata.levelscompleted)
	var intmain = int(main.name)
	if intmain == Userdata.levelscompleted:
		main.disabled = false
	elif intmain > Userdata.levelscompleted:
		main.disabled = true
	elif intmain < Userdata.levelscompleted:
		pass

func _pressed() -> void:
	var stringmain = str(main.name)
	var selectedlvl = load("res://scenes/levels/Level" + stringmain + ".tscn")
	Audiomanager.audioplayer.volume_db = -25
	animplayer.play("fadein")
	await animplayer.animation_finished
	get_tree().change_scene_to_packed(selectedlvl)
