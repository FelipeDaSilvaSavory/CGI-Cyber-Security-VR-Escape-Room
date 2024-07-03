extends Node3D

@onready var rayCast : RayCast3D = $XROrigin3D/RightHand/FunctionPointer/RayCast
var collidingObject
var isColliding = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if rayCast.is_colliding():
		collidingObject = rayCast.get_collider().get_name()
		print(collidingObject)
		isColliding = true
		Messenger.TOUCHING.emit(collidingObject)
	else:
		collidingObject = null
		isColliding = false
		Messenger.TOUCHING.emit(collidingObject)
	

func _on_right_hand_button_pressed(name):
	if isColliding == true && name == "trigger_click":
		Messenger.TRIGGER.emit()

