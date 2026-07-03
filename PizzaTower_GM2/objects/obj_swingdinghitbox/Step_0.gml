x = obj_player.x;
y = obj_player.y;
with (obj_player)
{
	if (state != states.grab || sprite_index != spr_swingding)
	{
		instance_destroy(other);
	}
}
