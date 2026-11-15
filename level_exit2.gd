extends Area2D


var start_y: float
@export var float_amplitude: float = 5.0 #how high moves
@export var float_speed: float = 5.0 #how fast up and down
@export var dance_speed: float = 8.0 #how fast side to side
@export var dance_amount: float = 0.15 #how far back and forth

func _ready() -> void:
	start_y = global_position.y
	
func _process(_delta: float) -> void:
	var time = Time.get_ticks_msec() * 0.001
	global_position.y = start_y + sin(time * float_speed) * float_amplitude		
	rotation = sin(time * dance_speed) * dance_amount
	
@export var next_level_file: String = "res://scn3.tscn"
func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		call_deferred("_change_scene")
func _change_scene() -> void:	
		get_tree().change_scene_to_file(next_level_file)
