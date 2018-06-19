/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2291E590
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "professor_obj"
/// @DnDArgument : "layer" ""Enemy_layer""
/// @DnDSaveInfo : "objectid" "bd3150af-365f-4a45-9e3e-6fdd587a92ed"
instance_create_layer(random(room_width), random(room_height), "Enemy_layer", professor_obj);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7E7CEEE1
/// @DnDArgument : "steps" "spawn_timer"
/// @DnDArgument : "alarm" "1"
alarm_set(1, spawn_timer);