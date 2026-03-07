extends RichTextLabel

func _ready():
	SignalHub.display.connect(display)
	
func display(to_display: String):
	self.text += to_display 
	
