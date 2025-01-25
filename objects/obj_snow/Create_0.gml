// Initialize the particle system
particle_system = part_system_create();

// Create a snow particle type
snow_particle = part_type_create();

// Set basic particle properties
part_type_shape(snow_particle, pt_shape_pixel);
part_type_size(snow_particle, 0.5, 2.0, 0, 0); // Varied sizes
part_type_speed(snow_particle, 0.05, 0.1, 0, 0); // Slow speeds
part_type_direction(snow_particle, 265, 275, 0, 0); // Gentle drift
part_type_gravity(snow_particle, 0.02, 270); // Minimal gravity
part_type_color_rgb(snow_particle, 255, 255, 255, 255, 255, 255); // White snow
part_type_alpha3(snow_particle, 0.5, 1.0, 0.5); // Varied transparency
part_type_life(snow_particle, 150, 300); // Varying lifetime
part_type_blend(snow_particle, true); // Additive blending for glow
