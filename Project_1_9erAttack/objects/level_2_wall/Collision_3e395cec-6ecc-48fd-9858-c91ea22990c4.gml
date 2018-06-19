/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7910EA19
/// @DnDApplyTo : e011bc8d-f44a-4f87-a3e9-f1548c362578
/// @DnDArgument : "var" "current_score"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "30"
with(Score_obj) var l7910EA19_0 = current_score >= 30;
if(l7910EA19_0)
{
	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 3667167E
	/// @DnDParent : 7910EA19
	room_goto_next();
}