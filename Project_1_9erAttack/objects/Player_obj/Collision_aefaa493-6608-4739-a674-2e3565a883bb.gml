/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 38209AE9
/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
/// @DnDArgument : "health" "-2"
/// @DnDArgument : "health_relative" "1"
with(Player_obj) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-2);
}

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 520F4E1A
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15FF2BBC
	/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
	/// @DnDParent : 520F4E1A
	/// @DnDArgument : "var" "lives"
	/// @DnDArgument : "value" "-1"
	with(Player_obj) var l15FF2BBC_0 = lives == -1;
	if(l15FF2BBC_0)
	{
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 5C5E8773
		/// @DnDParent : 15FF2BBC
		game_restart();
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6946EFD3
	/// @DnDParent : 520F4E1A
	else
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 128CD425
		/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
		/// @DnDParent : 6946EFD3
		/// @DnDArgument : "lives" "-1"
		/// @DnDArgument : "lives_relative" "1"
		with(Player_obj) {
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		__dnd_lives += real(-1);
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3667B1A6
		/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
		/// @DnDParent : 6946EFD3
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "lives"
		with(Player_obj) {
		lives += -1;
		
		}
	
		/// @DnDAction : YoYo Games.Instance Variables.Set_Health
		/// @DnDVersion : 1
		/// @DnDHash : 1431411E
		/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
		/// @DnDParent : 6946EFD3
		/// @DnDArgument : "health" "100"
		/// @DnDArgument : "health_relative" "1"
		with(Player_obj) {
		if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
		__dnd_health += real(100);
		}
	}
}