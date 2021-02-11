hsp = 0; 
vsp = 0; 
grav = 1;

image_xscale = 1.25;
image_yscale = 1.25;

attackDamage = 20;

hitpoints = 100;
maxHp = hitpoints;

healthbarHeight = 23;
healthbarWidth = 292;
//camYoffset = 384;  // Camera Y position off set relative to the room height
//healthbar_X = camera_get_view_width(view_camera[0]);
//healthbar_Y = camera_get_view_height(view_camera[0]);



// Var to check if player is already in the air(prevents double jump)
grounded = true;

// start the player in an idle state
state = PLAYERSTATETEST.IDLE

//  Enums to track different player states during game
enum PLAYERSTATETEST {
	WALK, 
	JUMPING,
	ATTACK_MEELE,
	IDLE,
	DAMAGED,
	DEAD
}

#region Parallax Scrolling
//  Variables used to control parallax scrolling
bkLay1 = layer_get_id("Background_1");
bkLay2 = layer_get_id("Background_2");
bkLay3 = layer_get_id("Background_3");
bkLay4 = layer_get_id("Background_4");
bkLay5 = layer_get_id("Background_5");
bkLay6 = layer_get_id("Background_6");
bkLay7 = layer_get_id("Background_7");
bkLay8 = layer_get_id("Background_8");
#endregion