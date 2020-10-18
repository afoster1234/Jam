extends Node

func _ready():
	$AudioStreamPlayer.playing = true

func _on_Button_pressed():
	var _scene := get_tree().change_scene("res://src/World.tscn")
