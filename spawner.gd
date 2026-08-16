extends Node3D
var win 
@export var escena_arepa : PackedScene

@onready var puntos_de_spawn : Array = get_children()


	
func spawnear_arepa():
	
	randomize()

		
	

	var punto_elegido = puntos_de_spawn.pick_random()
	var nueva_arepa = escena_arepa.instantiate()
	
	get_tree().current_scene.add_child(nueva_arepa)
	nueva_arepa.global_transform = punto_elegido.global_transform


func _on_timer_timeout() -> void:
	spawnear_arepa()
	pass # Replace with function body.


func _on_origin_ala() -> void:
	$"../Timer".start()
	pass # Replace with function body.


func _on_origin_ganar() -> void:
	win == true

	$"../Timer".stop()
	pass # Replace with function body.
