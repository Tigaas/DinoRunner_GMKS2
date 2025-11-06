if (keyboard_check_pressed(vk_escape)) {
    global.jogo_pausado = !global.jogo_pausado;
}

// Se o jogo estiver pausado, não atualiza nada além da pausa
if (global.jogo_pausado) {
	image_speed = 0
    // Aqui o jogo congela, mas sem resetar variáveis
    exit;
} else {
	image_speed = 1
}

// Aplicar gravidade apenas se não estiver no chão
if (!place_meeting(x, y + 1, obj_chao)) {
    velocidade_y += gravidade;
    no_chao = false;
} else {
    velocidade_y = 0;
    no_chao = true;
    
    // Correção: garantir que o jogador fique em cima do chão
    while (place_meeting(x, y, obj_chao)) {
        y -= 1;
    }
}

// Pular apenas se estiver no chão
if (keyboard_check_pressed(vk_space) && no_chao) {
    velocidade_y = forca_pulo;
    no_chao = false; // Para evitar múltiplos pulos seguidos
}

// Aplicar movimento vertical
y += velocidade_y;
