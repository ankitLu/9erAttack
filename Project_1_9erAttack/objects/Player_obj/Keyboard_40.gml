/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3B2B29A7
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "room_height-100"
if(y < room_height-100)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 6321A8B9
	/// @DnDParent : 3B2B29A7
	/// @DnDArgument : "x" "0"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "4"
	/// @DnDArgument : "y_relative" "1"
	x += 0;
	y += 4;
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0E761E62
/// @DnDArgument : "spriteind" "spr_playerAnk"
/// @DnDSaveInfo : "spriteind" "2d582a32-665c-463d-9a67-ee3518445935"
sprite_index = spr_playerAnk;
image_index = 0;