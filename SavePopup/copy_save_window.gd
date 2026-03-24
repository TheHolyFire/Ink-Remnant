extends Window

const SAVE_HEADER = SaveManager.SAVE_HEADER

@onready var save_string = $"SaveString"

func _on_close_pressed() -> void:
	visible = false


func _on_copy_pressed() -> void:
	DisplayServer.clipboard_set(save_string.text)


func set_save(stringified_save):
	save_string.text = stringified_save


func _on_export_save_pressed() -> void:
	
	visible = true
	var save_state: SaveState = SaveManager.save("Autosave")
	
	var string_save: String = var_to_str(save_state)
	string_save = SAVE_HEADER + string_save
	string_save = Marshalls.raw_to_base64(string_save.to_utf8_buffer())
	set_save(string_save)
