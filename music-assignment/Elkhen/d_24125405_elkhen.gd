extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	


func _on_button_7_button_down() -> void:
	$Button7/AudioStreamPlayer2D.play()

	pass # Replace with function body.


func _on_button_pressed() -> void:
	pass # Replace with function body.
