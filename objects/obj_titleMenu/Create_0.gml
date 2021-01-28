//  Array to store elements of the main menu
menu[1] = "  Start";
menu[0] = "  Credits";
menuItems = array_length_1d(menu);

//  Variables to align menu elements
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
menuItemHeight = font_get_size(font_mainFont);

// Menu cursor start place
menu_cursor = 1;

// Enable/disable cursor control
menu_control = true; 

menuCommitted = -1;