extends Area2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _on_body_entered(body: Node2D) -> void:
	print("+1 coin!")
	queue_free()
	animation_player.play("pickup")
	
