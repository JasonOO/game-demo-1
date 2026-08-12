extends Area2D

func _on_body_entered(body: Node2D) -> void:
	# 玩家碰到 killzone 时重新开始游戏
	if body.name == "player":
		get_tree().reload_current_scene()
