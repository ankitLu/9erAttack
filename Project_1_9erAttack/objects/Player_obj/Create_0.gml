/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6A218A61
/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "var" "lives"
with(Player_obj) {
lives = 3;

}

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 6985C736
/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
/// @DnDArgument : "lives" "3"
with(Player_obj) {

__dnd_lives = real(3);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7C65AF2E
/// @DnDArgument : "var" "can_shoot"
can_shoot = 0;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0046CBB4
/// @DnDArgument : "spriteind" "spr_playerAnk"
/// @DnDSaveInfo : "spriteind" "2d582a32-665c-463d-9a67-ee3518445935"
sprite_index = spr_playerAnk;
image_index = 0;