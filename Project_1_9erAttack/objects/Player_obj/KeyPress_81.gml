/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 3317AD62
/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
/// @DnDArgument : "lives" "99"
/// @DnDArgument : "lives_relative" "1"
with(Player_obj) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(99);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3E8D15FC
/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
/// @DnDArgument : "expr" "99"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "lives"
with(Player_obj) {
lives += 99;

}