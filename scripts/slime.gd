extends Node2D
@onready var ray_cast_left = $RayCastLeft
@onready var ray_cast_right = $RayCastRight
@onready var animated_srpite = $AnimatedSprite2D
var direction = 1
var speed = 60
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(ray_cast_left.is_colliding()):
		animated_srpite.flip_h = false
		direction = 1;
	if(ray_cast_right.is_colliding()):
		animated_srpite.flip_h = true
		direction = -1;
	position.x += direction*speed*delta
