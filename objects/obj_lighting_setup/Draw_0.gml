// Draw the scaled application surface to fit the screen
draw_text(oCat.x, oCat.y, "Camera X: " + string(vx));
draw_text(oCat.x-10, oCat.y-30, "Camera Y: " + string(vy));

//Local variables setup
var _cam = view_camera[0]
var _u_pos = u_pos;
var _u_pos2 = u_pos2;
var _u_str = u_str
var _u_dir = u_dir
var _u_fov = u_fov
var _u_zz = u_zz
var _vb = vb;
var _vx = vx
var _vy = vy

if (!surface_exists(shad_surf)){
	shad_surf = surface_create(240, 135);
}

matrix_set(matrix_world,matrix_build(-vx,-vy,0,0,0,0,1,1,1))
surface_set_target(shad_surf);
draw_clear_alpha(shade_color,0);
draw_set_color(c_white);
with(obj_light){
	
	//Draw the shadows (AKA light blockers)
	gpu_set_blendmode_ext_sepalpha(bm_zero,bm_one,bm_one,bm_zero);
	shader_set(sh_shadow);
	shader_set_uniform_f(_u_pos2,x,y);
	vertex_submit(_vb,pr_trianglelist,-1);
	
	//Draw the Light
	gpu_set_blendmode_ext_sepalpha(bm_inv_dest_alpha, bm_one, bm_zero, bm_zero);
	shader_set(sh_light);
	shader_set_uniform_f(_u_pos,x,y);
	shader_set_uniform_f(_u_zz,size);
	shader_set_uniform_f(_u_str,str);
	shader_set_uniform_f(_u_dir,dir);
	shader_set_uniform_f(_u_fov,fov);
	draw_rectangle_color(_vx,_vy,_vx+240,_vy+135,color,color,color,color,0); //canvas for drawing the light

}
surface_reset_target();

matrix_set(matrix_world,matrix_build(0,0,0,0,0,0,1,1,1))

gpu_set_blendmode_ext(bm_zero, bm_src_colour);
shader_set(sh_shadsurf);
draw_surface_ext(shad_surf, _vx, _vy,1,1,0,c_white,0.8);
shader_reset();
gpu_set_blendmode(bm_normal);
