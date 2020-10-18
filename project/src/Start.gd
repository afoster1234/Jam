extends Node

func _ready():
	$AudioStreamPlayer.play()

func _on_Button_pressed():
	var _scene := get_tree().change_scene("res://src/World.tscn")
