/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1AF22BAF
/// @DnDArgument : "expr" "300"
/// @DnDArgument : "var" "spawn_timer"
spawn_timer = 300;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 40116794
/// @DnDArgument : "steps" "spawn_timer"
alarm_set(0, spawn_timer);