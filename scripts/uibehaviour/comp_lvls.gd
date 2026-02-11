extends Label

@onready var CompLvlslabel = $"." as Label
@onready var TimesRpwnlabel = $"../TimesRpwn" as Label

func _ready() -> void:
	var stringlvlcomp = str(Userdata.levelscompleted)
	CompLvlslabel.text = "Levels completed: " + stringlvlcomp
	var stringtimesrpwn = str(Userdata.timesrespawned)
	TimesRpwnlabel.text = "Times respawned: " + stringtimesrpwn
