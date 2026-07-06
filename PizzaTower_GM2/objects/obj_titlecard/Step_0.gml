if (start && !loading)
{
	scr_menu_getinput();
	if (key_jump || key_start)
	{
		if (showtext)
		{
			alarm[0] = 1;
			alarm[2] = -1;
			music = true;
			if (music_inst != noone)
			{
				fmod_event_instance_stop(music_inst, false);
			}
		}
		else
		{
			showtext = true;
			skipbuffer = 120;
		}
	}
	if (skipbuffer > 0)
	{
		skipbuffer--;
	}
	else
	{
		showtext = false;
	}
}
if (!fadein)
{
	fadealpha = Approach(fadealpha, 1, 0.1);
	if (fadealpha >= 1)
	{
		fadein = true;
		start = true;
		music = false;
		alarm[0] = 180;
		if (title_music == "event:/music/secretworldtitle")
		{
			alarm[0] = 240;
		}
	}
}
else
{
	fadealpha = Approach(fadealpha, 0, 0.1);
	if (fadealpha <= 0 && !music && title_music != noone)
	{
		music = true;
		music_inst = fmod_event_create_instance(title_music);
		fmod_event_instance_play(music_inst);
	}
}
