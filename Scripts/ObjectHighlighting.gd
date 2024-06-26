extends MeshInstance3D

var shader : ShaderMaterial = self.get_surface_override_material(0).next_pass
var Highlight : bool = false

func _ready():
	Messenger.connect("TOUCHING", _on_touched)

func _process(delta):
	if Highlight == true:
		shader.set_shader_parameter("strength", 0.2)
	else:
		shader.set_shader_parameter("strength", 0.0)

func _on_touched(colliderName):
	if colliderName == $"..".get_name():
		Highlight = true
	if colliderName == null:
		Highlight = false
