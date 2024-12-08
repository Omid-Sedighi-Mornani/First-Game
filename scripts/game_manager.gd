extends Node

var score = 0
var total_coins = 0;
@onready var score_label: Label = $ScoreLabel
@onready var coins: Node = %Coins

func _ready() -> void:
	total_coins = coins.get_children().size()

func add_point():
	score += 1
	score_label.text = "You collected " + str(score) + " out of " + str(total_coins) + " coins!"
