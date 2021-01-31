//  Array to store elements of the main menu
menu[1] = "  Start";
menu[0] = "  Credits";
menuItems = array_length_1d(menu);

//  Variables to align menu elements
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
menuItemHeight = font_get_size(font_mainFont);
menuVisable = false;

// Menu cursor start place
menu_cursor = 1;

// Enable/disable cursor control
menu_control = true; 

//  Var is store menu choice
menuCommitted = -1;

// Vars to control screen flash
flashScreen = false; 
flashAlphaStart = 0;

//  Vars to control screen fade
fadeScreen = false;
fadeAlphaStart = 0;

//  Vars for text fade
textVisable = false;
fadeText = false;
fadeTextDown = false;
fadeTextAlphaStart = 0;
alarm[2] = room_speed * 2;

// Intro credits strings
introCredit[0] = "BlackSky Design Studio Presents";
introCredit[1] = "In Association With \nGlobal Game Jam Vancouver 2021";
introCredit[2] = "A Game Made By Team BlackSky Design";
currentText = -1;			//  current credit line on display
introCreditLength = array_length_1d(introCredit)

// Context vars to control background visablity
backLayerID = layer_get_id("Background");
backID = layer_background_get_id(backLayerID);

//  Start Intro with a black background
layer_background_visible(backID, false);

// Main title
mainTitle = "Darkest\n     Before\n         Dawn";
mainTitleVis = false;