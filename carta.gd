extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var selected = false

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if selected:
		self.set_global_position(get_global_mouse_position())
	pass

func _on_Area2D_input_event(viewport, event, shape_idx):
	#if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
	if event.is_action_pressed("inzqui"):
		selected = true
		print("clickeable")
	if event.is_action_released("inzqui"):
		selected = false
		print("No es clickeable")
	pass # Replace with function body.


func _on_Area2D_area_entered(area):
	$imagen/boton.show()
	pass # Replace with function body.


func _on_Area2D_area_exited(area):
	$imagen/boton.hide()
	pass # Replace with function body.
