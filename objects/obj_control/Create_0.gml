/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Criando um time_source (alarme) para poder fazer o sistema de repetição
source_time = time_source_create(time_source_game, 120, time_source_units_frames, function() 
{
    //Criando o inimigo
    instance_create_layer(16, -room_height, layer, obj_inimigo);
    show_message("olá");
}, [], -1);
