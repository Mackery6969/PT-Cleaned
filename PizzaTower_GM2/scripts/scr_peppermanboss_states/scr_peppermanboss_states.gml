function boss_pepperman_decide_attack()
{
	if (phase < 5)
	{
		pepperman_decide_attack_phase1();
	}
	else if (phase == 5)
	{
		pepperman_decide_attack_phase5();
	}
	else if (phase == 6)
	{
		pepperman_decide_attack_phase6();
	}
}

function pepperman_decide_attack_phase6()
{
	if (attack_cooldown > 0)
	{
		attack_cooldown--;
	}
	else
	{
		targetstunned = 0;
		attack_cooldown = attack_max[phase - 1];
		readjusting = false;
		if (hp <= superattack_hpthreshold)
		{
			state = states.superattackstart;
		}
		if (state != states.superattackstart)
		{
			var fakephase = irandom(100);
			if (fakephase > 60)
			{
				groundpound_fakeout = true;
				pepperman_decide_attack_phase5();
			}
			else
			{
				groundpound_fakeout = false;
				pepperman_decide_attack_phase1();
			}
		}
		else
		{
			superattack_buffer = superattack_max;
			sprite_index = spr_pepperman_shoulderstart;
			image_index = 0;
		}
	}
}

function pepperman_decide_attack_phase5()
{
	if (attack_cooldown > 0)
	{
		attack_cooldown--;
	}
	else
	{
		targetstunned = 0;
		attack_cooldown = attack_max[phase - 1];
		groundpound_fakeout = true;
		readjusting = false;
		state = (irandom(100) > 50) ? choose(states.charge, states.charge, states.shoulder) : states.jump;
		if (state == states.charge)
		{
			sprite_index = spr_pepperman_shoulderstart;
			image_index = 0;
			image_xscale = (targetplayer.x != x) ? sign(targetplayer.x - x) : image_xscale;
		}
		else if (state == states.shoulder)
		{
			shoulderturns = 3;
			sprite_index = spr_pepperman_shoulderstart;
			image_index = 0;
			image_xscale = (targetplayer.x != x) ? sign(targetplayer.x - x) : image_xscale;
		}
		else if (state == states.jump)
		{
			jumping_pepper = false;
			superjumping_pepper = false;
			image_index = 0;
			sprite_index = spr_pepperman_jump;
			readjusting = true;
			groundpound_readjust = choose(1, 2);
			target_x = targetplayer.x;
			vsp = -18;
			var d = abs(targetplayer.x - x);
			var t = room_speed * 2;
			var jump_spd = ceil(get_velocity(d, t)) * 3;
			hsp = (target_x != x) ? (sign(target_x - x) * jump_spd) : (image_xscale * jump_spd);
			if (hsp != 0)
			{
				image_xscale = sign(hsp);
			}
			with (instance_create(x, y - 5, obj_highjumpcloud2))
			{
				image_xscale = other.xscale;
			}
		}
	}
}

function pepperman_decide_attack_phase1()
{
	if (attack_cooldown > 0)
	{
		attack_cooldown--;
	}
	else
	{
		targetstunned = 0;
		attack_cooldown = attack_max[phase - 1];
		var chance_shoulder = 45 - ((5 * phase) - 1);
		state = (irandom(100) > chance_shoulder) ? states.shoulderbash : states.jump;
		shoulderpound_fakeout = (phase == 4) ? true : false;
		superjumping_pepper = (phase == 4) ? true : false;
		if (phase == 6)
		{
			shoulderpound_fakeout = (irandom(100) > 60) ? true : false;
			superjumping_pepper = (irandom(100) > 50) ? true : false;
		}
		if (phase > 1)
		{
			var chance_jumping = (phase == 2) ? 50 : 35;
			var chance_fakeout = (phase == 2) ? 60 : 50;
			jumping_pepper = (irandom(100) > chance_jumping) ? true : false;
			shoulderbash_fakeout = (irandom(100) > chance_fakeout) ? true : false;
			if (shoulderbash_fakeout)
			{
				shoulderpound_fakeout = false;
			}
		}
		if (state == states.shoulderbash)
		{
			if (shoulderpound_fakeout)
			{
				shoulderpound_buffer = shoulderpound_max;
			}
			if (shoulderbash_fakeout)
			{
				with (instance_create(x, y, obj_crazyrunothereffect))
				{
					playerid = other.id;
				}
			}
			image_index = 0;
			sprite_index = spr_pepperman_shoulderstart;
			image_xscale = (targetplayer.x != x) ? sign(targetplayer.x - x) : image_xscale;
		}
		else if (state == states.jump)
		{
			image_index = 0;
			sprite_index = spr_pepperman_jump;
			target_x = targetplayer.x;
			vsp = -18;
			if (!jumping_pepper)
			{
				var d = abs(targetplayer.x - x);
				var t = room_speed * 2;
				var jump_spd = ceil(get_velocity(d, t)) * 3;
				hsp = (target_x != x) ? (sign(target_x - x) * jump_spd) : (image_xscale * jump_spd);
			}
			else
			{
				var tx = (x < (room_width / 2)) ? (room_width - (room_width / 5)) : (room_width / 5);
				var d = abs(tx - x);
				var t = room_speed * 1.2;
				var jump_spd = ceil(get_velocity(d, t));
				hsp = (x > (room_width / 2)) ? -jump_spd : jump_spd;
			}
			if (hsp != 0)
			{
				image_xscale = sign(hsp);
			}
			with (instance_create(x, y - 5, obj_highjumpcloud2))
			{
				image_xscale = other.xscale;
			}
		}
	}
}

function boss_pepperman_summonbricks()
{
	instance_create(room_width / 2, -64, obj_peppermanbrick);
	instance_create(room_width / 5, -64, obj_peppermanbrick);
	instance_create(room_width - (room_width / 5), -64, obj_peppermanbrick);
}
