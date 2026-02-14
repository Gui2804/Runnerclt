/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

randomise();

//Criando as posições aleatória
pos_alet = -16;


//Criando um time_source (alarme) para poder fazer o sistema de repetição
source_time = time_source_create(time_source_game, 90, time_source_units_frames, function() 
{
    //Criando o inimigo
    instance_create_layer(16, pos_alet, layer, obj_inimigo);
    
    //Deixando a posição aleatória toda vez qe "despertar" o time_source
    pos_alet = random_range(-16, -64);
}, [], -1);
