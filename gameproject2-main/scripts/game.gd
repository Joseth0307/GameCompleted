extends Node2D
func game_over():
	$Music.stop()
	$Deathsound.play()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func new_game():
	$music.play()
