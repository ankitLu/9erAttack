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
/// @DnDArgument : "color" "$FF023BE8"
draw_set_colour($FF023BE8 & $ffffff);
draw_set_alpha(($FF023BE8 >> 24) / $ff);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2267EDF2
/// @DnDApplyTo : e011bc8d-f44a-4f87-a3e9-f1548c362578
/// @DnDArgument : "var" "current_score"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "20"
with(Score_obj) var l2267EDF2_0 = current_score < 20;
if(l2267EDF2_0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 402A5AD2
	/// @DnDParent : 2267EDF2
	/// @DnDArgument : "x" "(cam_x+500)"
	/// @DnDArgument : "y" "(cam_y+75)"
	/// @DnDArgument : "caption" ""Achieve a score of 20 to advance!""
	draw_text((cam_x+500), (cam_y+75), string("Achieve a score of 20 to advance!") + "");
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2296D95E
else
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 7923E6FE
	/// @DnDParent : 2296D95E
	/// @DnDArgument : "x" "(cam_x+500)"
	/// @DnDArgument : "y" "(cam_y+150)"
	/// @DnDArgument : "caption" ""Congratulations! Advance to the right!""
	draw_text((cam_x+500), (cam_y+150), string("Congratulations! Advance to the right!") + "");

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5AB9635A
	/// @DnDApplyTo : 482dbb8f-e849-424c-b6f9-9e2e3b2d35aa
	/// @DnDParent : 2296D95E
	with(homework_spawn) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1CBB7D1D
	/// @DnDApplyTo : 0ab5599d-6e3c-4250-a893-927f01da8a98
	/// @DnDParent : 2296D95E
	with(hulu_spawn) instance_destroy();
}