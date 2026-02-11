extends Area2D

@onready var marblec := $"../Marble" as RigidBody2D
var winui: PackedScene = load(Scenemanager.MenuPaths.winmenu)
var alreadycompbeforewin: PackedScene = load(Scenemanager.MenuPaths.alreadycompbeforewinui)
var currentlevel: int = 0
var digit: int = 5 #number of the specific digit we want to get from the name starting from 0
@onready var levelname: String = $"..".name

func _ready():
	var namenumberdigit = levelname[digit] #lets get the number from the level name
	var intnamenumber = int(namenumberdigit) #make it an integer now
	currentlevel = intnamenumber #update the important variable

func _on_marble_alive_entered(body: RigidBody2D) -> void:
	if body.name == "Marble":
		if currentlevel == Userdata.levelscompleted: 
			Userdata.levelscompleted += 1 
			get_tree().change_scene_to_packed.call_deferred(winui)
	
		elif currentlevel < Userdata.levelscompleted:
			get_tree().change_scene_to_packed.call_deferred(alreadycompbeforewin) 
	
		elif currentlevel > Userdata.levelscompleted: #this doesnt happend
			pass
