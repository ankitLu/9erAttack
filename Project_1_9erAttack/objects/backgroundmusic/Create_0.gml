/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 5E8B45FF
/// @DnDArgument : "soundid" "background"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "36c546ac-5525-436b-a574-4a580b37cd99"
var l5E8B45FF_0 = background;
if (!audio_is_playing(l5E8B45FF_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 169835B2
	/// @DnDParent : 5E8B45FF
	/// @DnDArgument : "soundid" "background"
	/// @DnDSaveInfo : "soundid" "36c546ac-5525-436b-a574-4a580b37cd99"
	audio_play_sound(background, 0, 0);
}