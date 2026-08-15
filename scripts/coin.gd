extends Area2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var label = $"../../Label"
@onready var game_manager = %gameManager

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	game_manager.add_score()
	label.text = "得分："+str(game_manager.score)
	animation_player.play("pickcoin")
	
