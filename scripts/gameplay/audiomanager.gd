extends AudioStreamPlayer

var maintheme: AudioStreamMP3 = preload("res://media/sfx/aquariumshort_bass.mp3")
@onready var audioplayer: AudioStreamPlayer = $"."

func play_maintheme() -> void:
	audioplayer.stream = maintheme
	audioplayer.play()
