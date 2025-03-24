// Verifica se o mouse está dentro da área do botão
if (mouse_check_button_pressed(mb_left)) {
    // Reinicia a sala atual (resetando o jogo)
    room_restart();
	room_goto(rm_main);
}
