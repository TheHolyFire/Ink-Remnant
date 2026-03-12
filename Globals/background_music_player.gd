extends AudioStreamPlayer2D


func _ready() -> void:
	self.stream = load("res://Music/Ascending the Vale.mp3")
	self.stream.loop = true
	self.play()
	self.volume_db = linear_to_db(.1)


func _on_h_slider_value_changed(value: float) -> void:
	self.volume_db = linear_to_db(value)


func _on_button_toggled(toggled_on: bool) -> void:
	self.stream_paused = toggled_on
