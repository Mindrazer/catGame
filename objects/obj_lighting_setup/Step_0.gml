camera_set_view_size(cam, 240, 135);
view_wport[0] = 240;
view_hport[0] = 135;

//Creates Quad with two triangles. Used to make the shadows. 
//Z coordinate is used as a flag to determine if the vertex will be repositioned in the shader
function quad(_vb,_x1,_y1,_x2,_y2){
	//Upper triangle
	vertex_position_3d(_vb,_x1,_y1,0);
	vertex_position_3d(_vb,_x1,_y1,1); //repositioned vertex
	vertex_position_3d(_vb,_x2,_y2,0);
	
	//Lower Triangle
	vertex_position_3d(_vb,_x1,_y1,1); //repositioned vertex
	vertex_position_3d(_vb,_x2,_y2,0);
	vertex_position_3d(_vb,_x2,_y2,1); //repositioned vertex
}
camera_width = camera_get_view_width(view_camera[0])
camera_height = camera_get_view_height(view_camera[0])


halfViewWidth = camera_width / 2 
halfViewHeight = camera_height / 2


vx = oCat.x - halfViewWidth
vy = oCat.y - halfViewHeight


//vx = (input_check("right")) - (input_check("left"))
//vy = (input_check("up")) - (input_check("down"))
//camera_set_view_pos(view_camera[0],vx, vy)

//Construct the vertex buffer with every wall
//Instead of using the four edges as the walls, we use the diagonals instead (Optimization)
vertex_begin(vb,vf);
var _vb = vb;
with(obj_light_wall) {
	//quad(_vb,x,y,x+sprite_width,y+sprite_height); //Negative Slope Diagonal Wall
	//quad(_vb,x+sprite_width,y,x,y+sprite_height); //Positive Slope Diagonal Wall
	quad(_vb,x,y,x+sprite_width,y); 
	quad(_vb,x+sprite_width, y, x+sprite_width, y+sprite_height);
	quad(_vb, x+sprite_width, y+sprite_height, x,y+sprite_height);
	quad(_vb, x,y+sprite_height, x, y);
}
with(obj_tri_light_wall_1) {
	quad(_vb, x, y, x+sprite_width, y+sprite_height)
}
with(obj_tri_light_wall_2) {
	quad(_vb, x, y+sprite_height, x+sprite_width, y)
}
vertex_end(vb);