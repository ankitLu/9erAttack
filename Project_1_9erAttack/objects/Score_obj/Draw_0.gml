/// @DnDAction : YoYo Games.Instance Variables.Get_Lives
/// @DnDVersion : 1
/// @DnDHash : 68A30223
/// @DnDArgument : "var" "life_left"
/// @DnDArgument : "var_temp" "1"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
var life_left = __dnd_lives;

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
/// @DnDArgument : "color" "$FFEA7719"
draw_set_colour($FFEA7719 & $ffffff);
draw_set_alpha(($FFEA7719 >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0BBBB955
/// @DnDArgument : "x" "(cam_x+500)"
/// @DnDArgument : "y" "(cam_y+32)"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "current_score"
draw_text((cam_x+500), (cam_y+32), string("Score: ") + string(current_score));

/// @DnDAction : YoYo Games.Instance Variables.Get_Lives
/// @DnDVersion : 1
/// @DnDHash : 0C328630
/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
/// @DnDArgument : "var" "temp_lives"
/// @DnDArgument : "var_temp" "1"
with(Player_obj) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
var temp_lives = __dnd_lives;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 402A5AD2
/// @DnDArgument : "x" "(cam_x+500)"
/// @DnDArgument : "y" "(cam_y+52)"
/// @DnDArgument : "caption" ""Lives: ""
/// @DnDArgument : "var" "temp_lives"
draw_text((cam_x+500), (cam_y+52), string("Lives: ") + string(temp_lives));

/// @DnDAction : YoYo Games.Instance Variables.Get_Health
/// @DnDVersion : 1
/// @DnDHash : 356536A7
/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "var_temp" "1"
with(Player_obj) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var hp = __dnd_health;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 257BCCFA
/// @DnDApplyTo : ce702e01-70d2-4f84-8701-856cb48f7f3a
/// @DnDArgument : "x1" "-50"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "70"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "50"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "72"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "value" "hp"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "barcol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF00FFFF"
with(Player_obj) draw_healthbar(x + -50, y + 70, x + 50, y + 72, hp, $FF000000 & $FFFFFF, $FFFFFF & $FFFFFF, $FF00FFFF & $FFFFFF, 0, (($FF000000>>24) != 0), (($FF0000FF>>24) != 0));

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5327D456
/// @DnDArgument : "code" "{$(13_10)var i;$(13_10)for (i = 1; i <= life_left; i += 1)$(13_10)   {$(13_10)	   draw_sprite(spr_life,0, i*10,10);$(13_10)   }$(13_10)}$(13_10)$(13_10)$(13_10)"
{
var i;
for (i = 1; i <= life_left; i += 1)
   {
	   draw_sprite(spr_life,0, i*10,10);
   }
}