extends Node3D

var interface : XRInterface
@onready var diffuseCurve : GradientTexture1D = load("res://new_gradient_texture_1d.tres")

func _ready() -> void:
	RenderingServer.global_shader_parameter_add("diffuse_curve", RenderingServer.GLOBAL_VAR_TYPE_SAMPLER2D, diffuseCurve)
	interface = XRServer.find_interface("OpenXR")
	if interface and interface.initialize():
		print("!")
		get_viewport().use_xr = true
