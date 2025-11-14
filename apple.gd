extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



@onready var health_manager: Node2D = $"../Player/Camera2D/health manager"


func _on_body_entered(body: Node2D) -> void:
	health_manager.heal()
	queue_free()
