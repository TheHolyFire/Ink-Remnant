extends AudioStreamPlayer2D


func _ready() -> void:
	self.stream = load("res://Music/Ascending the Vale.mp3")
	self.stream.loop = true
	self.play()
	self.volume_linear = (.2)
	SignalHub.volume_set.emit(self.volume_linear, false)
