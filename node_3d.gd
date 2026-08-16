extends Node3D

var xr_ui: OpenXRInterface

func _ready() -> void:
	xr_ui = XRServer.find_interface("OpenXR")
	if xr_ui and xr_ui.is_initialized():
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
		get_viewport().use_xr = true
		get_viewport().transparent_bg = true
		
		if xr_ui.is_passthrough_supported():
			xr_ui.start_passthrough()
