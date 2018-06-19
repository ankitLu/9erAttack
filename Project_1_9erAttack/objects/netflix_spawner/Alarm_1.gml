/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2291E590
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "netflix_spawn"
/// @DnDArgument : "layer" ""Enemy_layer""
/// @DnDSaveInfo : "objectid" "6a1511cb-33d8-43f9-b924-b7e12678c273"
instance_create_layer(random(room_width), random(room_height), "Enemy_layer", netflix_spawn);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7E7CEEE1
/// @DnDArgument : "steps" "spawn_timer"
/// @DnDArgument : "alarm" "1"
alarm_set(1, spawn_timer);