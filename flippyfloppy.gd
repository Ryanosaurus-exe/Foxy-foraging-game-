extends TextureRect

@export var flip_speed: float = 6.0
var original_scale_x = scale.x
func _ready() -> void:
	original_scale_x = scale.x 

func _process(_delta: float) -> void:
	var time = Time.get_ticks_msec() *0.001
	scale.x = original_scale_x * cos(time * flip_speed)
	
