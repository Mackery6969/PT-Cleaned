enum editorstates
{
	init = 0,
}

enum instancestates
{
	normal = 0,
	move = 1,
}

enum docks
{
	left = 1,
	right = 4,
	top = 6,
	last = 8,
}

enum dock_states
{
	free,
	docked
}

enum layertypes
{
	background = 0,
	tile = 1,
}

enum collisionflags
{
	secret = 1,
	on_slope = 2,
	on_floor = 4,
}
