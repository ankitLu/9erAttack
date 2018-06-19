/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 5A086C7D
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 4F6D909E
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 3CD3AB10
var l3CD3AB10_0;
l3CD3AB10_0 = mouse_check_button(mb_left);
if (l3CD3AB10_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48653ABB
	/// @DnDParent : 3CD3AB10
	/// @DnDArgument : "var" "can_shoot"
	/// @DnDArgument : "op" "3"
	if(can_shoot <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 550DFB48
		/// @DnDParent : 48653ABB
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "Player_bullet_obj"
		/// @DnDArgument : "layer" ""Bullet_layer""
		/// @DnDSaveInfo : "objectid" "24ffe93b-a818-41e5-b4ce-ae277166c192"
		instance_create_layer(x, y, "Bullet_layer", Player_bullet_obj);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4D60BF11
		/// @DnDParent : 48653ABB
		/// @DnDArgument : "expr" "10"
		/// @DnDArgument : "var" "can_shoot"
		can_shoot = 10;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1496A57C
		/// @DnDDisabled : 1
		/// @DnDParent : 48653ABB
		/// @DnDArgument : "spriteind" "spr_AnkShoot"
		/// @DnDSaveInfo : "spriteind" "db12ae0f-3d7a-42d2-a289-a83620bef9d2"
	
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 21DF3E4A
		/// @DnDDisabled : 1
		/// @DnDParent : 48653ABB
		/// @DnDArgument : "steps" "5"
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 490B6B35
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "can_shoot"
can_shoot += -1;