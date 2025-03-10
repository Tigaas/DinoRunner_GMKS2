cima = keyboard_check_pressed(ord("W"));//define a barra de espaço como botão de pulo

if !place_meeting(x, y + 1, obj_parede){ //isso configura para que quando o player não estiver encostando no chão, a gravidade faça efeito
	vel_v += gravidade;
	
	if vel_v > 0{
		caindo = true;
	}
}else{ // isso configura que se o player estiver no chão, ele pode pular
	if cima{
		vel_v = pulo;
	}
}

var _inst = instance_place(x, y + vel_v, obj_parede); //configurando colisão
if _inst{
	while !instance_place(x, y + sign(vel_v), obj_parede){
		y += sign(vel_v);
	}
	caindo = false;
	vel_v = 0;
}

y += vel_v;
	

