/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 53B9134F
/// @DnDArgument : "x" "Player_obj.x"
/// @DnDArgument : "y" "Player_obj.y"
direction = point_direction(x, y, Player_obj.x, Player_obj.y);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 4C0DC286
/// @DnDArgument : "speed" "1"
speed = 1;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6A1715E5
/// @DnDArgument : "var" "chance"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "20"
var chance = floor(random_range(1, 20 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0A862E38
/// @DnDApplyTo : bd3150af-365f-4a45-9e3e-6fdd587a92ed
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "3"
with(professor_obj) var l0A862E38_0 = hp <= 0;
if(!l0A862E38_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5BBAFC9C
	/// @DnDParent : 0A862E38
	/// @DnDArgument : "var" "chance"
	/// @DnDArgument : "value" "1"
	if(chance == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 47C11613
		/// @DnDParent : 5BBAFC9C
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "boss_bullet"
		/// @DnDArgument : "layer" ""Bullet_layer""
		/// @DnDSaveInfo : "objectid" "c3fe13dc-8672-4f08-8ee0-f938cf35b3d2"
		instance_create_layer(x + 0, y + 0, "Bullet_layer", boss_bullet);
	}
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 5461BD73
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4A8AB950
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 39BFA646
	/// @DnDApplyTo : e011bc8d-f44a-4f87-a3e9-f1548c362578
	/// @DnDParent : 4A8AB950
	/// @DnDArgument : "expr" "20"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "current_score"
	with(Score_obj) {
	current_score += 20;
	
	}

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6E9D38C5
	/// @DnDParent : 4A8AB950
	/// @DnDArgument : "spriteind" "sprite21"
	/// @DnDSaveInfo : "spriteind" "b65c49cc-20d2-4498-bc33-7c9b00fdd31c"
	sprite_index = sprite21;
	image_index = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 26270B6C
	/// @DnDParent : 4A8AB950
	/// @DnDArgument : "instvar" "3"
	speed = 0;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 62AD538E
	/// @DnDApplyTo : 6a1511cb-33d8-43f9-b924-b7e12678c273
	/// @DnDParent : 4A8AB950
	with(netflix_spawn) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 101375FF
	/// @DnDApplyTo : c0734c81-201e-4fde-a79e-209954c83e25
	/// @DnDParent : 4A8AB950
	with(snapchat_spawn) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 103B429A
	/// @DnDApplyTo : 73c69932-dc07-4b21-adce-dab5f836323e
	/// @DnDParent : 4A8AB950
	with(instagram_spawn) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5CBDBED6
	/// @DnDApplyTo : 482dbb8f-e849-424c-b6f9-9e2e3b2d35aa
	/// @DnDParent : 4A8AB950
	with(homework_spawn) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 181A521A
	/// @DnDApplyTo : 0ab5599d-6e3c-4250-a893-927f01da8a98
	/// @DnDParent : 4A8AB950
	with(hulu_spawn) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2DE3C6C1
	/// @DnDApplyTo : 049c1cfd-8200-44c1-9acc-471b45f52773
	/// @DnDParent : 4A8AB950
	with(Score_final_obj) instance_destroy();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6C3BD0EB
	/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
	/// @DnDParent : 4A8AB950
	/// @DnDArgument : "expr" "999999"
	/// @DnDArgument : "var" "lives"
	with(Player_obj) {
	lives = 999999;
	
	}

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 7465BFD9
	/// @DnDApplyTo : bd3150af-365f-4a45-9e3e-6fdd587a92ed
	/// @DnDParent : 4A8AB950
	/// @DnDArgument : "instvar" "3"
	with(professor_obj) {
	speed = 0;
	}
}