extends Control

@export var levelscence : PackedScene

@export var level2scene: PackedScene

func _on_button_pressed() -> void:
	get_tree(). get_root(). add_child(levelscence.instantiate())
	$CanvasLayer/Button.hide()
