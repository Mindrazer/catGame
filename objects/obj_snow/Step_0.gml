// Emit snowflakes randomly
var spawn_x = random_range(-50, room_width + 50);
var spawn_y = -10; // Start above the room

// Only create particles if no collision with the platform
if (!place_meeting(spawn_x, spawn_y + 1, oPlatform)) {
    part_particles_create(particle_system, spawn_x, spawn_y, snow_particle, 10);
}
