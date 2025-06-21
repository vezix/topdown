class_name EnemyStateIdle extends EnemyState

@export var anim_name : String = "idle"

@export_category("AI")
@export var state_duration_min : float = 0.5
@export var state_duration_max : float = 1.5
@export var next_state : EnemyState 

var _timer : float = 0.0 

# what happens when we initialize this state?
func init() -> void:
	pass # Replace with function body.

# what happen when the enemy enters this state?
func enter() -> void:
	enemy.velocity = Vector2.ZERO
	_timer = randf_range( state_duration_min, state_duration_max )
	enemy.update_animation ( anim_name )
	pass 

# what happens when the enemy exits this state? 
func exit() -> void: 
	pass 

# what happen during the _process update in this state? 
func process( _delta : float ) -> EnemyState:
	_timer -= _delta 
	if _timer <= 0:
		return next_state
	return null

# what happens during the _physics_Process update in this state?
func physics( _delta : float ) -> EnemyState:
	return null
