extends CheckButton




func _on_toggled(toggled_on: bool) -> void:
	JobManager.jobs_repeat = toggled_on
	if toggled_on != true:
		text = "Jobs will not repeat"
	else: 
		text = "Jobs automatically repeat"
	
