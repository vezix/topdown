class_name State extends Node

##Stores a ref to the player that this state belongs to
static var player: Player


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# what happen when player enters this state?
func Enter() -> void:
	pass 

# what happens when player exits this state? 
func Exit() -> void: 
	pass 

# what happen during the _process update in this state? 
func Process( _delta : float ) -> State:
	return null

# what happens during the _physics_Process update in this state?
func Physics( _delta : float ) -> State:
	return null

# what happens with input events in this state? 
func HandleInput ( _delta : InputEvent ) -> State:
	return null
