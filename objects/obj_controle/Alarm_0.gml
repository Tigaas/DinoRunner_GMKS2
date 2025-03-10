var _inst = instance_create_layer(room_width, 140, "Instances", obj_obstaculo);
	_inst.image_index = irandom(1);
	
	alarm[0] =random_range(room_speed * 1.4, room_speed * 1.8);