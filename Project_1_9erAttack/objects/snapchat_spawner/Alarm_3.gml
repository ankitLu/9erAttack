/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2291E590
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "snapchat_spawn"
/// @DnDArgument : "layer" ""Enemy_layer""
/// @DnDSaveInfo : "objectid" "c0734c81-201e-4fde-a79e-209954c83e25"
instance_create_layer(random(room_width), random(room_height), "Enemy_layer", snapchat_spawn);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7E7CEEE1
/// @DnDArgument : "steps" "spawn_timer"
/// @DnDArgument : "alarm" "3"
alarm_set(3, spawn_timer);