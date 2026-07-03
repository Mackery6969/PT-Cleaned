instance_destroy();
if (obj_player.character == "N")
{
	image_speed = 0;
	if (obj_player.image_index < 18 || obj_player.state != states.backbreaker)
	{
		instance_destroy();
	}
}
