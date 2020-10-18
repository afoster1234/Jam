extends Node

func _ready():
	$Dead.play()

func _on_Button_pressed():
	var _scene := get_tree().change_scene("res://src/World.tscn")


func _on_Button2_pressed():
	var _scene2 := get_tree().change_scene("res://src/Start.tscn")
