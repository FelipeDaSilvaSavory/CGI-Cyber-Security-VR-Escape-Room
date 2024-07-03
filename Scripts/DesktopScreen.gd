extends CanvasLayer

var firstClick = true
var done1 = false
var done2 = false
var done3 = false
var done4 = false
var done5 = false
var done6 = false
var done7 = false
# Called when the node enters the scene tree for the first time.
func _ready():
	Messenger.connect("First", _First)
	Messenger.connect("Second", _Second)
	Messenger.connect("Third", _Third)
	Messenger.connect("Fourth", _Fourth)
	Messenger.connect("Fith", _Fith)
	Messenger.connect("Sixth", _Sixth)
	Messenger.connect("Seventh", _Seventh)
	Messenger.connect("Pass1", Pass1)
	Messenger.connect("Pass2", Pass2)
	Messenger.connect("Pass3", Pass3)


func _First():
	done1 = true

func _Second():
	done2 = true

func _Third():
	done3 = true

func _Fourth():
	done4 = true

func _Fith():
	done5 = true

func _Sixth():
	done6 = true

func _Seventh():
	done7 = true

func Pass1():
	pass
	
func Pass2():
	pass
	
func Pass3():
	pass

func _on_button_pressed():
	if done3 == true:
		$Login/AnimationPlayer.play("new_animation")
		Messenger.Fourth.emit()


func _on_button_pressed2():
	if done5 == true:
		$Desktop3/AnimationPlayer.play("new_animation")
		Messenger.Sixth.emit()


func _on_button_pressed3():
	if done7 == true:
		$Desktop2/AnimationPlayer.play("new_animation")
