
if (keyboard_check_pressed(vk_escape)) {
   global.jogo_pausado = !global.jogo_pausado;
}

// Se o jogo estiver pausado, não atualiza nada além da pausa
if (global.jogo_pausado = true) {
	var ui_layer;
	if (layer_exists("UI")) {
            ui_layer = layer_get_id("UI");
        } else {
            // Se não existir, cria uma layer "UI" no topo da pilha
            ui_layer = layer_create(-1000000, "UI");
       
		 
		}

        // 🔹 Cria o modal na layer "UI"
        if (!instance_exists(obj_modal_pause)) {
            instance_create_layer(room_width / 2, room_height / 2, "UI", obj_modal_pause);
        }



	 exit;
        } else {
		with (obj_modal_pause) instance_destroy();	
		
		with (obj_botao_menu) instance_destroy();
		
		if (instance_exists(obj_botao_restart_pause)) {
    instance_destroy(obj_botao_restart_pause);
}
		}

   


// Mover o background com a velocidade ajustável
layer_x("Background", layer_get_x("Background") + velocidade_bg);
//layer_x("Nuvens", layer_get_x("Nuvens") + velocidade_cenario);
// Contador para criação dos obstáculos
tempo_spawn -= 1;
if (tempo_spawn <= 0) {
    // Criar o obstáculo fora da tela à direita
    var novo_obstaculo = instance_create_layer(room_width + 50, room_height - 75, "Instances", obj_obstaculo1);
    
    // Ajustar velocidade do obstáculo para acompanhar o cenário
    novo_obstaculo.velocidade_x = velocidade_bg;

    // Definir um novo tempo aleatório para o próximo spawn
    tempo_spawn = irandom_range(50, 120);
}
if (velocidade_bg > velocidade_max) {
    // Aumenta suavemente: quanto maior o score, mais rápido
    velocidade_bg = -2 - (pontuacao / 10);
}
if (velocidade_bg < velocidade_max) {
        velocidade_bg = velocidade_max;
}




