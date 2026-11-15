extends CanvasLayer



func _on_levels_pressed() -> void:
	get_tree().change_scene_to_file("res://mainmenu.tscn")
func _on_quit_button_pressed() -> void:
	get_tree().quit()	
