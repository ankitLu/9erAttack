/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7910EA19
/// @DnDApplyTo : e011bc8d-f44a-4f87-a3e9-f1548c362578
/// @DnDArgument : "var" "current_score"
/// @DnDArgument : "op" "4"
with(Score_obj) var l7910EA19_0 = current_score >= 0;
if(l7910EA19_0)
{
	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 3667167E
	/// @DnDParent : 7910EA19
	room_goto_next();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7D4CBBD7
else
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 6268B618
	/// @DnDParent : 7D4CBBD7
	/// @DnDArgument : "x" "(cam_x+500)"
	/// @DnDArgument : "y" "(cam_y+75)"
	/// @DnDArgument : "caption" ""Get a score of 20 or more! ""
	/// @DnDArgument : "var" "0"
	draw_text((cam_x+500), (cam_y+75), string("Get a score of 20 or more! ") + string(0));
}