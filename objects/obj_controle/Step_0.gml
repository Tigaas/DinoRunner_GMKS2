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

