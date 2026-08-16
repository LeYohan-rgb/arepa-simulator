extends XROrigin3D
var arepas = 0
signal ala
signal ganar
var win = false
func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.is_in_group("arepa"):
		body.queue_free()
		arepas = arepas +1
		print(arepas)
		$XRCamera3D/Label3D2.text = str(arepas)
		$"../NahttEat323883".play()
	if body.is_in_group("start"):
		$"../Label3D".show()
		$"../Label3D/Timer".start()
		emit_signal("ala")
		$"../OsosordoPercusionCumbiaModernaArgentina12916".play()
		$"../things/AnimationPlayer".play("subir")
		$XRCamera3D/ESCENE/AnimationPlayer.play("TEXTOS")
	pass # Replace with function body.


func _process(delta: float) -> void:
	if win == false:
		$XRCamera3D/Label3D2.text = str(arepas)
		if arepas == 50:
			emit_signal("ganar")
			win = false
			
			$"../nathan/AnimationPlayer".play("baile")
	
