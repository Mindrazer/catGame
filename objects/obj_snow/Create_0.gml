// Initialize the particle system
particle_system = part_system_create();

// Create a snow particle type
snow_particle = part_type_create();

// Set particle properties
part_type_shape(snow_particle, pt_shape_pixel); // Simple pixel-shaped particles
part_type_size(snow_particle, 0.5, 1.0, 0, 0); // Size range (min: 0.5, max: 1.0)
part_type_speed(snow_particle, 0.5, 1.0, 0, 0); // Speed range (min: 0.5, max: 1.0)
part_type_direction(snow_particle, 270, 270, 0, 0); // Fall straight down
part_type_gravity(snow_particle, 0.1, 270); // Light gravity to slow descent
part_type_color_rgb(snow_particle, 255, 255, 255, 255, 255, 255); // White snowflakes
