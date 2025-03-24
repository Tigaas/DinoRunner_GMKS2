// Destroi o jogador e programa a troca de sala para o próximo frame
instance_destroy();
alarm[0] = 5; // Atraso de 1 frame (ajustável)
// Troca para a sala de Game Over após o delay
room_goto(rm_gameover);
