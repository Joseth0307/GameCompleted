extends Node2D

const SCORE_PER_SECOND = 10

var score = 0
var is_game_over = false

@onready var score_label = $ScoreLabel
@onready var game_over_label = $GameOverLabel

func _ready():
	game_over_label.visible = false
	set_process(true)

func _process(delta):
	if not is_game_over:
		score += SCORE_PER_SECOND * delta
		score_label.text = "Puntaje: " + str(score)

func _on_collision_shape_area_entered(area):
	_on_player_dead()

func _on_player_dead():
	is_game_over = true
	game_over_label.visible = true
	game_over_label.text = "MUERTO"
