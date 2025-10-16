// Spawn just outside the right side of the room
var Spawn_X = room_width + 64;

// Possum (ground enemy)
var Spawn_Y_Ground = 571;
instance_create_layer(Spawn_X, Spawn_Y_Ground, "Obstacles", OPossum);

// Tree (flying enemy) - always spawn
var Spawn_Y_Flying = random_range(0, 350); // random height between 0 and 350
instance_create_layer(Spawn_X, Spawn_Y_Flying, "Obstacles", OTree);

// Reset Alarm 1 based on score
if (global.Score >= 10000) 
{
    // hardest (fastest spawns)
    alarm[1] = random_range(room_speed * 0.3, room_speed * 1.3);
}
else if (global.Score >= 5000) 
{
    // medium difficulty
    alarm[1] = random_range(room_speed * 0.5, room_speed * 2.5);
}
else
{
    // easy (default speed)
    alarm[1] = random_range(room_speed * 1.5, room_speed * 4);
}
