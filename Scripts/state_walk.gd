class_name State_Walk extends State

@export var move_speed : float = 100.0
@onready var idle: State = $"../Idle"
@onready var attack: State = $"../Attack"


# what happen when player enters this state?
func Enter() -> void:
	player.UpdateAnimation("walk")
	pass 

# what happens when player exits this state? 
func Exit() -> void: 
	pass 

# what happen during the _process update in this state? 
func Process( _delta : float ) -> State:
	if player.direction == Vector2.ZERO:
		return idle 
	
	player.velocity = player.direction * move_speed
	
	if player.SetDirection():
		player.UpdateAnimation("walk")
	return null

# what happens during the _physics_Process update in this state?
func Physics( _delta : float ) -> State:
	return null

# what happens with input events in this state? 
func HandleInput ( _event : InputEvent ) -> State:
	if _event.is_action_pressed("attack"):
		return attack
	return null
