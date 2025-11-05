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

