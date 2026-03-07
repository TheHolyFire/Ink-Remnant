extends Button
var signal_name: Signal = SignalHub.make_visible

	
func _on_pressed() -> void:
	signal_name.emit()
	$"..".queue_free()
