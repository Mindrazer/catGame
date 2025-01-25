// Emit snowflakes at the top of the screen
part_particles_create(particle_system, random(room_width), 0, snow_particle, 10);
// Check for collision with OPlatform
if (place_meeting(x, y + 1, oPlatform)) {
    // Change gravity to stop falling particles upon collision
    part_type_gravity(snow_particle, 0, 270);  // No gravity (particles stop falling)
} else {
    // Apply normal gravity if no collision
    part_type_gravity(snow_particle, 0.1, 270);  // Light gravity
}
