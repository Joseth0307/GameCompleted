exteextends Control

var name_input
var start_button

func _ready():
	name_input = $NameInput
	start_button = $StartButton
	start_button.disabled = true  # Deshabilitar al principio

	# Conectar la señal de cambio de texto
	name_input.connect("text_changed", self, "_on_name_input_changed")
	start_button.connect("pressed", self, "_on_StartButton_pressed")

func _on_name_input_changed(new_text):
	# Habilitar el botón si hay texto en el campo
	start_button.disabled = new_text.strip_edges() == ""

func _on_StartButton_pressed():
	var player_name = name_input.text.strip_edges()
	if player_name != "":
		get_tree().change_scene("res://GameScene.tscn")  # Asegúrate de que la ruta sea correcta
