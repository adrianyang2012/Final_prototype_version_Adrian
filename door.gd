extends Area2D

@onready var boss: Area2D = $"../Boss"
@onready var health_manager: Node2D = $"../Player/Camera2D/health manager"
var started = 0
func _on_body_entered(body: Node2D) -> void:
	if not started:
		started =1
		boss.reached()
		health_manager.boss()
