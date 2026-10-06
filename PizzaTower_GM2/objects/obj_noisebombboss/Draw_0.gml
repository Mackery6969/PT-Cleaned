if (!obj_player.ispeppino)
{
	shader_set(global.Pal_Shader);
	pal_swap_set(spr_noiseboss_palette, 1);
	draw_self();
	shader_reset();
}
else
{
	shader_set(global.Pal_Shader);
	pal_swap_set(spr_noiseboss_palette, 2);
	draw_self();
	shader_reset();
}
