extends MeshInstance3D

var shader : ShaderMaterial = self.get_surface_override_material(0).next_pass
var Highlight : bool = false

func _ready():
	Messenger.connect("TOUCHING", _on_touched)
	Messenger.connect("TRIGGER", _on_trigger_pushed)

func _process(delta):
	if Highlight == true:
		shader.set_shader_parameter("strength", 0.4)
	else:
		shader.set_shader_parameter("strength", 0.0)

func _on_touched(colliderName):
	if colliderName == $"..".get_name():
		Highlight = true
	if colliderName == null:
		Highlight = false

func _on_trigger_pushed():
	if Highlight == true:
		if $"..".has_method("_action"):
			$".."._action()
