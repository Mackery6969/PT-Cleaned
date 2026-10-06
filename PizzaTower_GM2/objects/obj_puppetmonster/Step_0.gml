image_speed = 0.35;
switch (state)
{
	case states.monsteridle:
		sprite_index = spr_introidle;
		image_speed = 0.35;
		break;
	case states.monsterintro:
		if (sprite_index != spr_intro)
		{
			sprite_index = spr_intro;
			image_index = 0;
		}
		if (ANIMATION_END)
		{
			state = states.monsterchase;
		}
		break;
	case states.monsterchase:
		playerid = obj_player.id;
		sprite_index = spr_monstertomato_chase;
		var dir = point_direction(x, y, playerid.x, playerid.y);
		if (!(x > (playerid.x - 8) && x < (playerid.x + 8) && y > (playerid.y - 8) && y < (playerid.y + 8)))
		{
			x += lengthdir_x(6, dir);
			y += lengthdir_y(6, dir);
		}
		if (x != playerid.x)
		{
			image_xscale = sign(playerid.x - x);
		}
		break;
}
if (state == states.monsterchase)
{
	if (!fmod_event_instance_is_playing(snd))
	{
		fmod_event_instance_play(snd);
	}
	fmod_event_instance_set_3d_attributes(snd, x, y);
}
else
{
	fmod_event_instance_stop(snd, true);
}
if (state == states.monsterchase)
{
	depth = -100;
}
