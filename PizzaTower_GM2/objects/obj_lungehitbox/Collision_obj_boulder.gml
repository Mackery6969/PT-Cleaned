if (other.state != states.grabbed && playerid.state != states.grab)
{
	other.state = states.grabbed;
	if (playerid.object_index == obj_player)
	{
		other.grabbedby = 1;
	}
	else
	{
		other.grabbedby = 2;
	}
	var _boulderID = other.id;
	with (playerid)
	{
		state = states.grab;
		baddiegrabbedID = _boulderID;
		grabbingenemy = true;
		movespeed = 0;
		image_index = 0;
		sprite_index = spr_haulingstart;
	}
}
