depth = 1;
global.afterimage_list = ds_list_create();
alpha = array_create(afterimagetype.last, 1);
alpha[afterimagetype.heatattack] = 0.5;
shd_color_red = shader_get_uniform(shd_color_afterimage, "red");
shd_color_green = shader_get_uniform(shd_color_afterimage, "green");
shd_color_blue = shader_get_uniform(shd_color_afterimage, "blue");
