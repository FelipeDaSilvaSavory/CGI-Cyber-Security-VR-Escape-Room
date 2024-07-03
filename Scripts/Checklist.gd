extends StaticBody3D


var firstClick = true
var done = false

func _ready():
	Messenger.connect("Fourth", _prepared)

func _prepared():
	done = true

func _action():
	if done == true:
		if firstClick == true:
			Messenger.Fith.emit()
			firstClick = false
