/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 1894F076
/// @DnDArgument : "var" "cam_view"
/// @DnDArgument : "value" "view_camera[0]"
var cam_view = view_camera[0];

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 3834629E
/// @DnDArgument : "var" "cam_x"
/// @DnDArgument : "value" "camera_get_view_x(cam_view)"
var cam_x = camera_get_view_x(cam_view);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 58D815D2
/// @DnDArgument : "var" "cam_y"
/// @DnDArgument : "value" "camera_get_view_y(cam_view)"
var cam_y = camera_get_view_y(cam_view);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 1217F0F8
/// @DnDArgument : "var" "cam_width"
/// @DnDArgument : "value" "camera_get_view_width(cam_view)"
var cam_width = camera_get_view_width(cam_view);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 428D5E07
/// @DnDArgument : "font" "Score_font"
/// @DnDSaveInfo : "font" "464d7285-8db7-49bb-b7ed-b04c7ee16a34"
draw_set_font(Score_font);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 55A26B49
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 4AB6F5FF
/// @DnDArgument : "color" "$FF0000E8"
draw_set_colour($FF0000E8 & $ffffff);
draw_set_alpha(($FF0000E8 >> 24) / $ff);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 42C6CBB8
/// @DnDApplyTo : bd3150af-365f-4a45-9e3e-6fdd587a92ed
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "3"
with(professor_obj) var l42C6CBB8_0 = hp <= 0;
if(!l42C6CBB8_0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 402A5AD2
	/// @DnDParent : 42C6CBB8
	/// @DnDArgument : "x" "(cam_x+500)"
	/// @DnDArgument : "y" "(cam_y+75)"
	/// @DnDArgument : "caption" ""Destroy the final boss!""
	draw_text((cam_x+500), (cam_y+75), string("Destroy the final boss!") + "");
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 210C68E2
else
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 501231C3
	/// @DnDParent : 210C68E2
	/// @DnDArgument : "color" "$FF32E56E"
	draw_set_colour($FF32E56E & $ffffff);
	draw_set_alpha(($FF32E56E >> 24) / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 37761C5E
	/// @DnDParent : 210C68E2
	/// @DnDArgument : "x" "(cam_x+500)"
	/// @DnDArgument : "y" "(cam_y+75)"
	/// @DnDArgument : "caption" ""Congratulations! Mission Accomplished!""
	draw_text((cam_x+500), (cam_y+75), string("Congratulations! Mission Accomplished!") + "");
}