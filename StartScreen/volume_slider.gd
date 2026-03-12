extends HSlider

func _ready() -> void:
	SignalHub.volume_set.connect(set_vol)


func set_vol(volume: float, _mute: bool):
	self.value = volume
