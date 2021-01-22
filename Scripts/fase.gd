extends Node2D

var pre_bomba = preload("res://Scenes/bomba.tscn")
var tempo = 0 
export var ini = .5
export var fim = 2

export var pontos = 0
onready var txt_label = $label

func _ready():
	pass
	
func _process(delta):
	txt_label.text = "Pontos: " + str(pontos)
	tempo += delta
	if tempo > rand_range(ini, fim):
		CriarBomba()
		tempo = 0

func CriarBomba():
	var bomba = pre_bomba.instance()
	bomba.position = Vector2(rand_range(30,500),0)
	self.add_child(bomba)
