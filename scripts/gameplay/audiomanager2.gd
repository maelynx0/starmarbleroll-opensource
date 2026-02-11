extends AudioStreamPlayer

var wintheme: AudioStreamMP3 = preload("res://media/sfx/notif_star.mp3")
var fall: AudioStreamMP3 = preload("res://media/sfx/jingle.mp3")
@onready var audioplayer2: AudioStreamPlayer = $"."

func play_fallsfx() -> void:
	audioplayer2.stream = fall
	audioplayer2.volume_db = -10
	audioplayer2.play()

func play_wintheme() -> void:
	audioplayer2.stream = wintheme
	audioplayer2.play()
