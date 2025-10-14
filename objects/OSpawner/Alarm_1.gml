// Spawn just outside the right side of the room
var spawn_x = room_width + 64;

// Possum (ground enemy)
var spawn_y_ground = 571;
instance_create_layer(spawn_x, spawn_y_ground, "Obstacles", OPossum);

// Tree (flying enemy) - always spawn
var spawn_y_flying = random_range(0, 350); // random height between 0 and 350
instance_create_layer(spawn_x, spawn_y_flying, "Obstacles", OTree);

// Reset Alarm 1 based on score
if (global.score >= 10000) 
{
    // hardest (fastest spawns)
    alarm[1] = random_range(room_speed * 0.3, room_speed * 1.3);
}
else if (global.score >= 5000) 
{
    // medium difficulty
    alarm[1] = random_range(room_speed * 0.5, room_speed * 2.5);
}
else
{
    // easy (default speed)
    alarm[1] = random_range(room_speed * 1.5, room_speed * 4);
}
