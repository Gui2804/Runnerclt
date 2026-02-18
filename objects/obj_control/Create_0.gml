/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

randomise();

//Criando as posições aleatória do eixo y
posy_alet = -16;

//Criando as posições aleatórias do eixo x
posx_aleat = 16;

//Criando um tempo aleatorio
temp_aleatorio = irandom_range(2, 5);



//Criando um time_source (alarme) para poder fazer o sistema de repetição
source_time = time_source_create(time_source_game, temp_aleatorio, time_source_units_seconds, function() 
{
    //Criando o inimigo
    instance_create_layer(posx_aleat, posy_alet, layer, obj_inimigo);
    
    //Deixando a posição aleatória toda vez qe "despertar" o time_source
    posy_alet = random_range(-16, -64);
    
    //Deixando a posição do eixo x aleatória
    posx_aleat = choose(16, 170);
    
    //Deixando o tempo aleatório de novo
    temp_aleatorio = irandom_range(2, 5)
}, [], -1);
