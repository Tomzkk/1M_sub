extends Node
class_name Enums
## Global enums list


enum Phase
{
	NONE,
	GAME_STARTING,
	PLAYER_ATTACKING,
	PLAYER_FINISHING,
	ENEMY_ATTACKING,
}

enum Team
{
	ENEMY,
	FRIENDLY,
}

enum ApplicationType
{
	FRIENDLY_ONLY, 
	ENEMY_ONLY,
	ALL,
}

enum TargetType
{
	SINGLE_TARGET,
	ALL_TARGETS,
}

enum CardCastType
{
	TARGET,
	INSTA_CAST,
}

enum CardMovementState
{
	NONE,
	MOVING_TO_HAND,
	IN_HAND,
	DISCARDING,
	HOVERED,
	QUEUED,
}
