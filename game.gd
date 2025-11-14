extends Node2D


var scene = load("res://arrow_manager.tscn")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var instance = scene.instantiate()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		var instance = scene.instantiate()
		add_child(instance)
