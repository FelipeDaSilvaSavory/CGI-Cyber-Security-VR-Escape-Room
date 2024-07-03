extends StaticBody3D


var firstClick = true
var done = false

func _ready():
	Messenger.connect("First", _prepared)

func _prepared():
	done = true

func _action():
	if done == true:
		if firstClick == true:
			Messenger.Second.emit()
			firstClick = false
		$".".hide()
		$"../book open holder".show()
