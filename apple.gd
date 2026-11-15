extends Area2D
var start_y: float
@export var float_amplitude: float = 5.0
@export var float_speed: float  = 5.0

func _ready() -> void:
	start_y = global_position.y
	
func _process(delta: float) -> void:
	var time = Time.get_ticks_msec() * 0.001
	global_position	.y = start_y + sin(time * float_speed) * float_amplitude


func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		# GameManager.add_score(1) # Uncomment this if you track score
		queue_free()	
