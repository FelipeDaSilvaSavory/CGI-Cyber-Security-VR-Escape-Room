extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	Messenger.connect("First", _First)
	Messenger.connect("Second", _Second)
	Messenger.connect("Third", _Third)
	Messenger.connect("Fourth", _Fourth)
	Messenger.connect("Fith", _Fith)
	Messenger.connect("Sixth", _Sixth)
	Messenger.connect("Seventh", _Seventh)


func _First():
	$ColorRect/Label2.show()

func _Second():
	$ColorRect/Label4.show()

func _Third():
	$ColorRect/Label7.show()

func _Fourth():
	$ColorRect/Label5.show()

func _Fith():
	$ColorRect/Label8.show()

func _Sixth():
	$ColorRect/Label6.show()

func _Seventh():
	$ColorRect/Label9.show()
