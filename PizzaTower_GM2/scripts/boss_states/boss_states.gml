function state_boss_arenaround()
{
	image_speed = 0.35;
	var is_playerside = (targetplayer.x > (room_width / 2)) ? (x > (room_width / 5)) : (x < (room_width - (room_width / 5)));
	if (is_playerside)
	{
		hsp = (targetplayer.x > (room_width / 2)) ? -normal_spd : normal_spd;
	}
	else if (!is_playerside && hsp != 0)
	{
		image_xscale = -sign(hsp);
		hsp = 0;
	}
	if (hsp != 0 && grounded)
	{
		sprite_index = walkspr;
		image_xscale = sign(hsp);
	}
	else if (grounded)
	{
		sprite_index = idlespr;
	}
	else
	{
		sprite_index = fallspr;
	}
}

function boss_decide_taunt(arg0)
{
}

function state_player_arenaround()
{
	var _normal_spd = 6;
	var is_bossside = (x < (room_width / 2)) ? (x > (room_width / 5)) : (x < (room_width - (room_width / 5)));
	if (is_bossside)
	{
		hsp = (x < (room_width / 2)) ? -_normal_spd : _normal_spd;
	}
	else if (!is_bossside && hsp != 0)
	{
		xscale = -sign(hsp);
		hsp = 0;
	}
	if (hsp != 0 && grounded)
	{
		image_speed = 0.6;
		sprite_index = spr_move;
		xscale = sign(hsp);
	}
	else
	{
		image_speed = 0.35;
		if (grounded)
		{
			sprite_index = spr_idle;
		}
		else
		{
			sprite_index = spr_fall;
		}
	}
}
