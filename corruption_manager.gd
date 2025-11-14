extends Node2D

@onready var corruption_amount: Label = $"corruption amount"
var corruption = 0
@onready var health_manager: Node2D = $"../health manager"
	
@onready var player: CharacterBody2D = $"../.."
func explode() -> void:
	corruption+=40
	scientist_npc.explode()
	player.explode()
func upgrade() -> void:
	player.upgrade()
	corruption+=1
func decrease() -> void:
	corruption-=1
# Called every frame. 'delta' is the elapsed time since the previous frame.

@onready var scientist_npc: Node2D = $"../../../Area2D/Scientist NPC"

func _process(delta: float) -> void:
	corruption_amount.text = "corruption: "+str(corruption)
