extends Window
@export var label_text: String = "Story goes here"
@export var button_text: String = "Action goes here"
@export var sig_name: Signal = SignalHub.make_visible

func _ready():
	create(label_text, button_text, sig_name)

func create(label: String, button: String, sig: Signal):
	$RichTextLabel.text = label
	$Button.text = button
	$Button.signal_name = sig
