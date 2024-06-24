extends MeshInstance3D

var shader : ShaderMaterial = self.mesh.material.next_pass
var Highlight : bool = false

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		Highlight = !Highlight
	
	if Highlight == true:
		shader.set_shader_parameter("strength", 0.2)
	else:
		shader.set_shader_parameter("strength", 0.0)
