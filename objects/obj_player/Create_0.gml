/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Variaveis que eu vou precisar
velh = 0;
acel = .1;
max_velh = 2;
xscale = 1; //Escala horizontal do player

//Inputs
right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));


//Fazendo o sistema de colisão dele
colisao = function()
{
    //Usando move and collide
    move_and_collide(velh, 0, obj_colisor, 12);
}

//Fazendo a movimentação dele
movi = function()
{
    //Esquerda e direita 
    right = keyboard_check(ord("D"));
    left = keyboard_check(ord("A"));
    
    //Só fazendo isso se eu apertei alguma tecla
    if ((left xor right))  
    {
        //Pegando a direção em que o player está indo
        var _dir = point_direction(0, 0, (right - left), 0);
        
        //Adicionando a direção ao velh e velv
        //Fazendo o player deslizar na tela do jogo
        var _max_velh = lengthdir_x(max_velh, _dir);
        velh = lerp(velh, _max_velh, acel); 
    }
    //Senão eu não me movo
    else 
    {
        //Desacelerando 
        velh = lerp(velh, 0, acel);
    }
    
}

//Fazendo um método para poder fazer a troca da escala do player
inverte_escala = function()
{
    //Pegando a metade da room (horizontal)
    var _hori_room = room_width/2;
    
    //Se o player passar do meio da room, ele vai inverter o xscale dele
    if (x > _hori_room - 16)
    {
        //Invertendo a escala dele
        xscale = lerp(xscale, -1, .1);
    }
    else
    {
        xscale = lerp(xscale, 1, .1);
    }
}








