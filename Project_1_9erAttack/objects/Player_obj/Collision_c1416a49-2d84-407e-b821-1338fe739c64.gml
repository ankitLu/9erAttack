/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 6E081A2F
/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
/// @DnDArgument : "health" "-2"
/// @DnDArgument : "health_relative" "1"
with(Player_obj) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-2);
}

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 14415AD9
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 47D5CEB5
	/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
	/// @DnDParent : 14415AD9
	/// @DnDArgument : "var" "lives"
	/// @DnDArgument : "value" "-1"
	with(Player_obj) var l47D5CEB5_0 = lives == -1;
	if(l47D5CEB5_0)
	{
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 7DBC07A2
		/// @DnDParent : 47D5CEB5
		game_restart();
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7C3E3BBE
	/// @DnDParent : 14415AD9
	else
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 1DDB1CAB
		/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
		/// @DnDParent : 7C3E3BBE
		/// @DnDArgument : "lives" "-1"
		/// @DnDArgument : "lives_relative" "1"
		with(Player_obj) {
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		__dnd_lives += real(-1);
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 109E99AC
		/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
		/// @DnDParent : 7C3E3BBE
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "lives"
		with(Player_obj) {
		lives += -1;
		
		}
	
		/// @DnDAction : YoYo Games.Instance Variables.Set_Health
		/// @DnDVersion : 1
		/// @DnDHash : 5307F2A8
		/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
		/// @DnDParent : 7C3E3BBE
		/// @DnDArgument : "health" "100"
		/// @DnDArgument : "health_relative" "1"
		with(Player_obj) {
		if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
		__dnd_health += real(100);
		}
	}
}