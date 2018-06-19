/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 5A20B1FA
/// @DnDArgument : "obj" "Player_obj"
/// @DnDSaveInfo : "obj" "ce702e01-70d2-4f84-8701-856cb48f7f3a"
var l5A20B1FA_0 = false;
l5A20B1FA_0 = instance_exists(Player_obj);
if(l5A20B1FA_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 639F59E1
	/// @DnDParent : 5A20B1FA
	/// @DnDArgument : "speed" "4"
	/// @DnDArgument : "type" "2"
	vspeed = 4;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 713100F6
	/// @DnDParent : 5A20B1FA
	/// @DnDArgument : "x" "Player_obj.x"
	/// @DnDArgument : "y" "Player_obj.y"
	direction = point_direction(x, y, Player_obj.x, Player_obj.y);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0DDD15CD
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5F9E6803
	/// @DnDParent : 0DDD15CD
	/// @DnDArgument : "speed" "4"
	/// @DnDArgument : "type" "2"
	vspeed = 4;
}