class_name State_Idle extends State
@onready var walk: State = $"../Walk"

# what happen when player enters this state?
func Enter() -> void:
	player.UpdateAnimation("idle")
	pass 

# what happens when player exits this state? 
func Exit() -> void: 
	pass 

# what happen during the _process update in this state? 
func Process( _delta : float ) -> State:
	if player.direction !=  Vector2.ZERO: 
		return walk
	player.velocity = Vector2.ZERO
	return null

# what happens during the _physics_Process update in this state?
func Physics( _delta : float ) -> State:
	return null

# what happens with input events in this state? 
func HandleInput ( _delta : InputEvent ) -> State:
	return null
