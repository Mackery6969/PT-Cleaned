global.currentsavefile = 1;
var data_arr = [get_save_folder() + "/saveData1", get_save_folder() + "/saveData2", get_save_folder() + "/saveData3"];
global.stickreq[0] = 100;
global.stickreq[1] = 150;
global.stickreq[2] = 200;
global.stickreq[3] = 200;
global.stickreq[4] = 210;
global.levelattempts = 0;
for (var i = 0; i < array_length(data_arr); i++)
{
	global.game[i] = scr_read_game(data_arr[i] + ".ini");
	global.gameN[i] = scr_read_game(data_arr[i] + "N.ini");
}
global.newtoppin[0] = false;
global.newtoppin[1] = false;
global.newtoppin[2] = false;
global.newtoppin[3] = false;
global.newtoppin[4] = false;
global.mach_color1 = make_colour_rgb(96, 208, 72);
global.mach_color2 = make_colour_rgb(248, 0, 0);
global.afterimage_color1 = make_colour_rgb(255, 0, 0);
global.afterimage_color2 = make_colour_rgb(0, 255, 0);
global.smallnumber_color1 = make_colour_rgb(255, 255, 255);
global.smallnumber_color2 = make_colour_rgb(248, 0, 0);
global.smallnumber_fnt = font_add_sprite_ext(spr_smallnumber, "1234567890-+", true, 0);
global.pigreduction = 0;
global.pigtotal = 0;
global.levelcomplete = false;
global.entrancetreasure = false;
global.medievaltreasure = false;
global.ruintreasure = false;
global.dungeontreasure = false;
global.deserttreasure = false;
global.graveyardtreasure = false;
global.farmtreasure = false;
global.spacetreasure = false;
global.beachtreasure = false;
global.foresttreasure = false;
global.pinballtreasure = false;
global.golftreasure = false;
global.streettreasure = false;
global.sewertreasure = false;
global.factorytreasure = false;
global.freezertreasure = false;
global.chateautreasure = false;
global.mansiontreasure = false;
global.kidspartytreasure = false;
global.wartreasure = false;
with (obj_player)
{
	state = states.normal;
}
if (global.longintro)
{
	global.longintro = false;
	room_goto(Longintro);
}
else
{
	room_goto(Mainmenu);
}
instance_destroy(obj_cutscene_handler);