if (keyboard_check_pressed(vk_f5))
{
	active = !active;
	keyboard_string = "";
	history_index = -1;
}
if (active)
{
	var _search = false;
	if (keyboard_check_pressed(vk_tab))
	{
		if (!ds_list_empty(search_commands))
		{
			var _first = ds_list_find_value(search_commands, 0);
			input_text = string_split(_first, " ")[0];
			_search = true;
		}
		keyboard_key_release(vk_tab);
	}
	else if (keyboard_check_pressed(vk_up))
	{
		if (ds_list_size(command_history) > 0)
		{
			history_index = min(history_index + 1, ds_list_size(command_history) - 1);
			input_text = ds_list_find_value(command_history, history_index);
			_search = true;
		}
		keyboard_key_release(vk_up);
	}
	else if (keyboard_check_pressed(vk_down))
	{
		if (history_index > 0)
		{
			history_index--;
			input_text = ds_list_find_value(command_history, history_index);
		}
		else
		{
			history_index = -1;
			input_text = "";
		}
		_search = true;
		keyboard_key_release(vk_down);
	}
	else
	{
		if (keyboard_check(vk_anykey) && !keyboard_check(vk_f5))
		{
			input_text += keyboard_string;
			for (var i = 0; i < string_length(keyboard_string); i++)
			{
				var b = string_char_at(keyboard_string, i + 1);
				var d = string_upper(b);
				if (d == "")
				{
					d = string_lettersdigits(b);
				}
				keyboard_key_release(ord(d));
			}
			keyboard_string = "";
			history_index = -1;
			_search = true;
		}
		if (keyboard_check(vk_backspace))
		{
			input_text = string_delete(input_text, string_length(input_text), 1);
			keyboard_key_release(vk_backspace);
			history_index = -1;
			_search = true;
		}
	}
	if (keyboard_check_pressed(vk_enter))
	{
		if (input_text != "")
		{
			ds_list_insert(command_history, 0, input_text);
		}
		history_index = -1;
		DoCommand(input_text);
		input_text = "";
		keyboard_string = "";
		_search = true;
	}
	if (_search)
	{
		ds_list_clear(search_commands);
		search_w = 0;
		for (var i = 0; i < ds_list_size(command_list); i++)
		{
			var b = ds_list_find_value(command_list, i);
			var s = b.command_id;
			var d = string_split(input_text, " ");
			var t = d[0];
			if (input_text != "" && string_copy(s, 1, string_length(t)) == t)
			{
				var txt = concat(b.command_id, " ", b.format, " - ", b.description);
				ds_list_add(search_commands, txt);
				var w = string_width(txt);
				if (w > search_w)
				{
					search_w = w;
				}
			}
		}
	}
}
