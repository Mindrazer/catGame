// Create the application surface
display_set_gui_maximize();
application_surface_draw_enable(false);

shade_color = c_white;

cam = view_camera[0]

//camera fix
var height_ratio = display_get_height() / 1080;
var width_ratio = display_get_width() / 1920;

if (height_ratio < width_ratio)
{
xsclfix = height_ratio
ysclfix = height_ratio
}
else
{
xsclfix = width_ratio
ysclfix = width_ratio;
}

//Shader uniform variable setup
u_pos = shader_get_uniform(sh_light,"u_pos");
u_zz = shader_get_uniform(sh_light,"zz");
u_str = shader_get_uniform(sh_light, "u_str");
u_dir = shader_get_uniform(sh_light, "u_dir");
u_fov = shader_get_uniform(sh_light, "u_fov");
u_pos2 = shader_get_uniform(sh_shadow,"u_pos");

//Vertex format and buffer setup
vertex_format_begin();
vertex_format_add_position_3d();
vf = vertex_format_end();
vb = vertex_create_buffer();

shad_surf = noone;

//turn on Debug
//show_debug_overlay(1);

vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])