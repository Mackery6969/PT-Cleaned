function scr_player_stunned()
{
	hsp = 0;
	combo = 0;
	mach2 = 0;
	bounce = false;
	jumpAnim = true;
	if (grounded)
	{
		landAnim = false;
	}
	else
	{
		landAnim = true;
	}
	jumpstop = false;
	crouchAnim = false;
	movespeed = 0;
	hurted = true;
	alarm[5] = 2;
	alarm[7] = 60;
	image_speed = 0.35;
	if (ANIMATION_END)
	{
		mask_index = spr_player_mask;
		state = states.normal;
		sprite_index = spr_idle;
		image_index = 0;
	}
}
