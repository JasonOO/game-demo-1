extends Area2D
@onready var timer = $Timer



func _on_body_entered(body: Node2D) -> void:
	# 玩家碰到 killzone 时重新开始游戏
	if body.name == "player":
		body.get_node("CollisionShape2D").queue_free()
		timer.start()
		



func _on_timer_timeout() -> void:
	get_tree().reload_current_scene() # Replace with function body.
