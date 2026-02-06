/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Variaveis que eu vou precisar
velh = 0;
acel = .1;
max_velh = 2;
xscale = 1; //Escala horizontal do player


//Fazendo o sistema de colisão dele
colisao = function()
{
    //Usando move and collide
    move_and_collide(velh, 0, obj_colisor, 12);
}

//Fazendo a movimentação dele
movi = function()
{
    //Pegando os inputs
    var _right, _left
    
    //Esquerda e direita 
    _right = keyboard_check(ord("D"));
    _left = keyboard_check(ord("A"));
    
    //Atribuindo esses valores ao Velh
    velh = (_right - _left) * max_velh;
    
    //Só fazendo isso se eu apertei alguma tecla
    if ((_left xor _right))  
    {
        //Pegando a direção em que o player está indo
        var _dir = point_direction(0, 0, (_right - _left), 0);
        
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







