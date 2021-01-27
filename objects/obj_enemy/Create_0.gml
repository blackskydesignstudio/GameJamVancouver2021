hsp = 0; 
vsp = 0; 
grav = 1;

// Basic enemy patrol variables 
enemyLeft = x - 255;
enemyPath = path_add();

// Functions used to set enemy on basic patrol path on instance create
mp_potential_path(enemyPath, enemyLeft, y, 4, 3, true);
path_start(enemyPath, 4, path_action_reverse, true);


