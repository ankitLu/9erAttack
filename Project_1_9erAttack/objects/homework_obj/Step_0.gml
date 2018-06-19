/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6684D6FE
/// @DnDArgument : "obj" "Player_obj"
/// @DnDSaveInfo : "obj" "ce702e01-70d2-4f84-8701-856cb48f7f3a"
var l6684D6FE_0 = false;
l6684D6FE_0 = instance_exists(Player_obj);
if(l6684D6FE_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 597988A4
	/// @DnDParent : 6684D6FE
	/// @DnDArgument : "x" "Player_obj.x"
	/// @DnDArgument : "y" "Player_obj.y"
	direction = point_direction(x, y, Player_obj.x, Player_obj.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4B23D8A1
	/// @DnDParent : 6684D6FE
	/// @DnDArgument : "speed" "move_speed"
	speed = move_speed;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 60FCD317
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BF1A6CD
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61CAAB30
	/// @DnDApplyTo : e011bc8d-f44a-4f87-a3e9-f1548c362578
	/// @DnDParent : 3BF1A6CD
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "current_score"
	with(Score_obj) {
	current_score += 1;
	
	}

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7C0AE62B
	/// @DnDParent : 3BF1A6CD
	/// @DnDArgument : "objind" "dead_enemy"
	/// @DnDSaveInfo : "objind" "60dc25d9-342d-436a-951f-f3d86f4368e1"
	instance_change(dead_enemy, true);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 39129F86
	/// @DnDParent : 3BF1A6CD
	/// @DnDArgument : "instvar" "3"
	speed = 0;
}