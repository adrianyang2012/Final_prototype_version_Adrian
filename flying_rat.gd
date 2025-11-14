extends Node2D

func ouch() -> void:
	health-=1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
@onready var player: CharacterBody2D = $"../Player"


@onready var ray_cast_2d: RayCast2D = $RayCast2D
@onready var ray_cast_2d_2: RayCast2D = $RayCast2D2
@onready var ray_cast_2d_3: RayCast2D = $RayCast2D3
@onready var ray_cast_2d_4: RayCast2D = $RayCast2D4
var health = 15
var positive = 0
@onready var corruption_manager: Node2D = $"../Player/Camera2D/corruption manager"
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if health<1:
		corruption_manager.upgrade()
		queue_free()
	if ((player.position.x-position.x)**2+(player.position.y-position.y)**2)<10000000:
		if player.position.x>position.x:
			if not ray_cast_2d.is_colliding():
				position.x+=delta*(650-(positive*100))
		else:
			if not ray_cast_2d_4.is_colliding():
				position.x-=delta*(650-(positive*100))
		if player.position.y>position.y:
			if not ray_cast_2d_3.is_colliding():
				position.y+=delta*(650-(positive*100))
		else:
			if not ray_cast_2d_2.is_colliding():
				position.y-=delta*(650-(positive*100))
		



func _on_body_entered(body: Node2D) -> void:
	health_manager.ouch()
	
@onready var health_manager: Node2D = $"../Player/Camera2D/health manager"



func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()


func _on_body_exited(body: Node2D) -> void:
	health_manager.unouch()
	pass # Replace with function body.
