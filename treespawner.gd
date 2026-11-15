extends Area2D



@export var collectible_scene: PackedScene
var has_interracted: bool = false
func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D and not has_interracted:
		has_interracted = true
		spawn_collectible()
func spawn_collectible()	-> void:
	if collectible_scene:
		var item  = collectible_scene.instantiate() 
		item.global_position = global_position + Vector2(0, -40)
		get_tree().current_scene.add_child(item)
