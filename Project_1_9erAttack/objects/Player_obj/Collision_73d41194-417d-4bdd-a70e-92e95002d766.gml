/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 45D83249
/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
/// @DnDArgument : "health" "-6"
/// @DnDArgument : "health_relative" "1"
with(Player_obj) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-6);
}

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 2D77E1C6
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61F8F633
	/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
	/// @DnDParent : 2D77E1C6
	/// @DnDArgument : "var" "lives"
	/// @DnDArgument : "value" "-1"
	with(Player_obj) var l61F8F633_0 = lives == -1;
	if(l61F8F633_0)
	{
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 36955C8B
		/// @DnDParent : 61F8F633
		game_restart();
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4C8B0F56
	/// @DnDParent : 2D77E1C6
	else
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 1759CB84
		/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
		/// @DnDParent : 4C8B0F56
		/// @DnDArgument : "lives" "-1"
		/// @DnDArgument : "lives_relative" "1"
		with(Player_obj) {
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		__dnd_lives += real(-1);
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 56CE2A12
		/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
		/// @DnDParent : 4C8B0F56
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "lives"
		with(Player_obj) {
		lives += -1;
		
		}
	
		/// @DnDAction : YoYo Games.Instance Variables.Set_Health
		/// @DnDVersion : 1
		/// @DnDHash : 688E1132
		/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
		/// @DnDParent : 4C8B0F56
		/// @DnDArgument : "health" "100"
		/// @DnDArgument : "health_relative" "1"
		with(Player_obj) {
		if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
		__dnd_health += real(100);
		}
	}
}