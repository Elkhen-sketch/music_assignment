extends  Node2D

func _on_button_7_button_down() -> void:
	if $demeter.playing:
		$Button7.text = "Play"
		$demeter.stop()
	else:
		$Button7.text = "Stop"
		$demeter.play()
	pass # Replace with function body.

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Bass drum"):
		if $bassdrum2.playing:
			$bassdrum2.stop()
		else:
			$bassdrum2.play()
	queue_redraw()
	if Input.is_action_just_pressed("Medium tom"):
		if $mediumtom.playing:
			$mediumtom.stop()
		else:
			$mediumtom.play()
	queue_redraw()
	pass

func _on_button_3_button_down() -> void:
	$mediumtom.play()
	pass # Replace with function body.


func _on_button_8_button_down() -> void:
	$"snare drum".play()
	pass # Replace with function body.


func _on_button_5_button_down() -> void:
	$"small tom".play()
	pass # Replace with function body.


func _on_button_9_button_down() -> void:
	$bassdrum2.play()
	pass # Replace with function body.
	

	

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:

	print(event.position)

	var s = remap(event.position.x, 902, 1017, 0, 2)
	$demeter.pitch_scale = s
	var p = get_viewport().get_mouse_position()


	var vol = remap(event.position.y, 42, 157, 0, 1)
	vol = linear_to_db(vol)
	AudioServer.set_bus_volume_db(0, vol)
	print(p)
	print("89Hwello from the mouse")
	pass # Replace with function body.




func _on_button_11_button_down() -> void:
	$"bass drum".play()
	pass # Replace with function body.


func _on_button_2_button_down() -> void:
	$sinfull.play()
	pass # Replace with function body.


func _on_button_12_button_down() -> void:
	if $sinfull.playing:
		$Button12.text = "Play"
		$sinfull.stop()
	else:
		$Button12.text = "Stop"
		$sinfull.play()
	pass # Replace with function body.


func _on_button_13_button_down() -> void:
	$lowtomD.play()
	pass # Replace with function body.


func _on_buttonhihat_button_down() -> void:
	$hihat.play()
	pass # Replace with function body.


func _on_buttoncrushsymbal_button_down() -> void:
	$"crush symbal".play()
	pass # Replace with function body.


func _on_buttonclay_button_down() -> void:
	$clay.play()
	pass # Replace with function body.


func _on_button_17_button_down() -> void:
	if $"loca people".playing:
		$Button17.text = "Play"
		$"loca people".stop()
	else:
		$Button17.text = "Stop"
		$"loca people".play()
	pass # Replace with function body.


func _on_button_15_button_down() -> void:
	if $selfishD.playing:
		$Button15.text = "Play"
		$selfishD.stop()
	else:
		$Button15.text = "Stop"
		$selfishD.play()
	pass # Replace with function body.


func _on_button_16_button_down() -> void:
	if $berserkrD.playing:
		$Button16.text = "Play"
		$berserkrD.stop()
	else:
		$Button16.text = "Stop"
		$berserkrD.play()
	pass # Replace with function body.
