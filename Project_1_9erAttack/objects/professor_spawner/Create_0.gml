/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 79C285B6
/// @DnDArgument : "expr" "420"
/// @DnDArgument : "var" "spawn_timer"
spawn_timer = 420;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6B0BF5EC
/// @DnDArgument : "steps" "spawn_timer"
/// @DnDArgument : "alarm" "3"
alarm_set(3, spawn_timer);