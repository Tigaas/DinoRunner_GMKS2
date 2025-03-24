// Mover para a esquerda seguindo a velocidade do background
x += velocidade_x;

// Destruir quando sair da tela para evitar acúmulo de objetos
if (x < -50) {
    instance_destroy();
}


