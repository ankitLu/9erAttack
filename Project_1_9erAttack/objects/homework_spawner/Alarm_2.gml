/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2291E590
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "homework_spawn"
/// @DnDArgument : "layer" ""Enemy_layer""
/// @DnDSaveInfo : "objectid" "482dbb8f-e849-424c-b6f9-9e2e3b2d35aa"
instance_create_layer(random(room_width), random(room_height), "Enemy_layer", homework_spawn);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7E7CEEE1
/// @DnDArgument : "steps" "spawn_timer"
/// @DnDArgument : "alarm" "2"
alarm_set(2, spawn_timer);