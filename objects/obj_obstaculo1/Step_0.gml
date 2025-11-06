if (keyboard_check_pressed(vk_escape)) {
    global.jogo_pausado = !global.jogo_pausado;
}

// Se o jogo estiver pausado, não atualiza nada além da pausa
if (global.jogo_pausado) {
    // Aqui o jogo congela, mas sem resetar variáveis
    exit;
}

// Mover para a esquerda seguindo a velocidade do background
x += velocidade_x;

// Destruir quando sair da tela para evitar acúmulo de objetos
if (x < -50) {
    instance_destroy();
}
// Se o obstáculo passou do jogador e ainda não foi contado
if (instance_exists(obj_jogador)){
if (x + sprite_width < obj_jogador.x && !pontuado) {
    obj_controle.pontuacao += 1;
    pontuado = true;
}
}
if (velocidade_x > obj_controle.velocidade_max) {
    // Aumenta suavemente: quanto maior o score, mais rápido
    velocidade_x = -2 - (obj_controle.pontuacao / 10);
}
if (velocidade_x < obj_controle.velocidade_max) {
        velocidade_x = obj_controle.velocidade_max;
}

	
