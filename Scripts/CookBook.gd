extends StaticBody3D


var firstClick = true
var done = false

func _ready():
	Messenger.connect("Sixth", _prepared)

func _prepared():
	done = true

func _action():
	if done == true:
		if firstClick == true:
			Messenger.Seventh.emit()
			firstClick = false
		$".".hide()
		$"../book open holder2".show()
