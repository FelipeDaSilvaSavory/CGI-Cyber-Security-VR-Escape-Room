extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	Messenger.connect("First", _First)
	Messenger.connect("Third", _Third)
	Messenger.connect("Fith", _Fith)
	Messenger.connect("Seventh", _Seventh)

func _First():
	$RichTextLabel.text = "Right. She forgot all her passwords. What would Grandma make her login?"
	$AnimationPlayer.play("new_animation")

func _Third():
	$RichTextLabel.text = "That's Daisy"
	$AnimationPlayer.play("new_animation")

func _Fith():
	$RichTextLabel.text = "Grandma said they married in '97... Hope they have a good anniversary."
	$AnimationPlayer.play("new_animation")

func _Seventh():
	$RichTextLabel.text = "Grandma's Lemon Meringue... She said she saved a slice for me."
	$AnimationPlayer.play("new_animation")
