extends Label3D
var segundos = 120




func _on_timer_timeout() -> void:
	segundos = segundos - 1 # Replace with function body.
	$".".text = "TIME IS RUNNING:  " + str(segundos) 

func _process(delta: float) -> void:
	if segundos == 0:
		get_tree().change_scene_to_file("res://node_3d.tscn")
	
