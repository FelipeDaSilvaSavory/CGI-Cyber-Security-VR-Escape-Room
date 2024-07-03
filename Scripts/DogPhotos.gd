extends StaticBody3D


var firstClick = true
var done = false

func _ready():
	Messenger.connect("Second", _prepared)

func _prepared():
	done = true

func _action():
	if done == true:
		if firstClick == true:
			Messenger.Third.emit()
			firstClick = false
