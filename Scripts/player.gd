extends Node3D

@onready var rayCast : RayCast3D = $XROrigin3D/RightHand/FunctionPointer/RayCast
var collidingObject

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if rayCast.is_colliding():
		collidingObject = rayCast.get_collider().get_name()
		print(collidingObject)
		Messenger.TOUCHING.emit(collidingObject)
	else:
		collidingObject = null
		Messenger.TOUCHING.emit(collidingObject)
	
	
	
