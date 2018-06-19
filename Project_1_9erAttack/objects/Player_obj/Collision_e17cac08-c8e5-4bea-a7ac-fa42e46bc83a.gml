/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5EF5FD39
alarm_set(0, 30);

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 58282538
/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
/// @DnDArgument : "health" "-2"
/// @DnDArgument : "health_relative" "1"
with(Player_obj) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-2);
}

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 61FB9FBE
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5FCEAF8B
	/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
	/// @DnDParent : 61FB9FBE
	/// @DnDArgument : "var" "lives"
	/// @DnDArgument : "op" "3"
	with(Player_obj) var l5FCEAF8B_0 = lives <= 0;
	if(l5FCEAF8B_0)
	{
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 2DFF603F
		/// @DnDParent : 5FCEAF8B
		game_restart();
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 07CC04F8
	/// @DnDParent : 61FB9FBE
	else
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 24E31361
		/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
		/// @DnDParent : 07CC04F8
		/// @DnDArgument : "lives" "-1"
		/// @DnDArgument : "lives_relative" "1"
		with(Player_obj) {
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		__dnd_lives += real(-1);
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 39E538E9
		/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
		/// @DnDParent : 07CC04F8
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "lives"
		with(Player_obj) {
		lives += -1;
		
		}
	
		/// @DnDAction : YoYo Games.Instance Variables.Set_Health
		/// @DnDVersion : 1
		/// @DnDHash : 267D4E0F
		/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
		/// @DnDParent : 07CC04F8
		/// @DnDArgument : "health" "100"
		/// @DnDArgument : "health_relative" "1"
		with(Player_obj) {
		if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
		__dnd_health += real(100);
		}
	}
}