// Centraliza o modal na tela
x = display_get_gui_width() / 2;
y = display_get_gui_height() / 2;

image_xscale = 6;
image_yscale = 6;

// Cria os botões dentro do modal
var botao_restart = instance_create_layer(x - 160, y + 150, "UI", obj_botao_restart_pause);
var botao_menu    = instance_create_layer(x - 160, y + 10, "UI", obj_botao_menu);

// Diminui o tamanho (sem alterar as sprites originais)
botao_restart.image_xscale = 4; // largura em 60%
botao_restart.image_yscale = 4; // altura em 60%
botao_menu.image_xscale    = 4;
botao_menu.image_yscale    = 4;

// (opcional) associa os botões ao modal, pra controle futuro
botao_restart.modal_parent = id;
botao_menu.modal_parent = id;
