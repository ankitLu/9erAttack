/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 70C637C5
/// @DnDArgument : "spriteind" "spr_AnkLeft"
/// @DnDSaveInfo : "spriteind" "26fdf3cd-f33d-4ce9-8efa-fffa9c4d86e7"
sprite_index = spr_AnkLeft;
image_index = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3F9D5A18
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "90"
if(x > 90)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1E37A7AB
	/// @DnDParent : 3F9D5A18
	/// @DnDArgument : "x" "-4"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x += -4;
	y += 0;
}