extends Button

var toggle: bool = false

func _ready() -> void:
	SignalHub.second_popup_closed.connect(make_visible)
	
func make_visible():
	self.visible = true


func _on_pressed() -> void:
	#if toggle == false:
		#toggle = true
		SceneManager.set_scene(SceneManager.Scene.HOUSE)
		#text = "City"
	#else:
		#toggle = false
		#SceneManager.set_scene(SceneManager.Scene.CITY)
		#text = "House"
		
	#SignalHub.hometoggle.emit(toggle)
	
