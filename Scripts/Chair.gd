extends StaticBody3D

var isSitting = false
var firstClick = true

func _action():
	if firstClick == true:
		Messenger.First.emit()
		firstClick = false
	if isSitting == false:
		$"../../player".get_child(0).global_position = Vector3(0.745, -0.682, -2.8)
		isSitting = true
	if $"../../player".get_child(0).global_position != Vector3(0.745, -0.682, -2.8):
		isSitting = false
	print("HE")
