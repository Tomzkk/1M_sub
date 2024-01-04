extends EntityComponent
class_name PartyComponent
## Holds data related to the Entity's team and party members.
##
## An entity's party also contains the owning entity.


@export var team: Enums.Team = Enums.Team.ENEMY

var party: Array[Entity] = []


func can_play_on_entity(application_type: Enums.ApplicationType, target: Entity) -> bool:
	if application_type == Enums.ApplicationType.ALL:
		return true
	
	var target_team: Enums.Team = target.get_party_component().team
	var caster_team: Enums.Team = team
	
	if target_team == caster_team:
		if application_type == Enums.ApplicationType.FRIENDLY_ONLY:
			return true
	else:
		if application_type == Enums.ApplicationType.ENEMY_ONLY:
			return true
	
	return false


func set_party(in_party: Array[Entity]) -> void:
	party = in_party
	

func add_party_member(party_member: Entity) -> void:
	party.append(party_member)
