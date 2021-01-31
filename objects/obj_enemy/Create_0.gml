hsp = 0; 
vsp = 0; 
grav = 0.1;  //height thta the enemy will jump lower number is 
			 // higher jump
enemySpeed = choose(1, 2.5, 3, 5, 6); // variable to set enemy speed


attackDamage = 10;
hitpoints = 20;
attackAvailable = true;

audio_play_sound(choose(orc1,orc2,orc3),1,false);

//// Functions used to set enemy on basic patrol path on instance create
//mp_potential_path(enemyPath, enemyLeft, y, 4, 1, true);
//path_start(enemyPath, 4, path_action_reverse, true);


