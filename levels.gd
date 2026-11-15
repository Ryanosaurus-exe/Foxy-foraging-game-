extends Control


func _on_level_1_pressed() -> void:
	get_tree().change_scene_to_file("res://scn1.tscn")


func _on_level_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scn2.tscn")


func _on_level_3_pressed() -> void:
	get_tree().change_scene_to_file("res://scn3.tscn")
