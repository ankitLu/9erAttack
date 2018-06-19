/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 7717005F
/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
/// @DnDArgument : "health" "-2"
/// @DnDArgument : "health_relative" "1"
with(Player_obj) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-2);
}

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 7ED89664
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A17D8DD
	/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
	/// @DnDParent : 7ED89664
	/// @DnDArgument : "var" "lives"
	/// @DnDArgument : "value" "-1"
	with(Player_obj) var l0A17D8DD_0 = lives == -1;
	if(l0A17D8DD_0)
	{
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 3352F3AA
		/// @DnDParent : 0A17D8DD
		game_restart();
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7F572B2A
	/// @DnDParent : 7ED89664
	else
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 422E847D
		/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
		/// @DnDParent : 7F572B2A
		/// @DnDArgument : "lives" "-1"
		/// @DnDArgument : "lives_relative" "1"
		with(Player_obj) {
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		__dnd_lives += real(-1);
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A928568
		/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
		/// @DnDParent : 7F572B2A
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "lives"
		with(Player_obj) {
		lives += -1;
		
		}
	
		/// @DnDAction : YoYo Games.Instance Variables.Set_Health
		/// @DnDVersion : 1
		/// @DnDHash : 2A4DCC96
		/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
		/// @DnDParent : 7F572B2A
		/// @DnDArgument : "health" "100"
		/// @DnDArgument : "health_relative" "1"
		with(Player_obj) {
		if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
		__dnd_health += real(100);
		}
	}
}