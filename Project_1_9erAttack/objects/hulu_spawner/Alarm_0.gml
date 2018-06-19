/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2291E590
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "hulu_spawn"
/// @DnDArgument : "layer" ""Enemy_layer""
/// @DnDSaveInfo : "objectid" "0ab5599d-6e3c-4250-a893-927f01da8a98"
instance_create_layer(random(room_width), random(room_height), "Enemy_layer", hulu_spawn);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7E7CEEE1
/// @DnDArgument : "steps" "spawn_timer"
alarm_set(0, spawn_timer);