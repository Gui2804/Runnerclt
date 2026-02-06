/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Variaveis que eu vou precisar
velh = 0;
max_velh = 5;
gravh = -1; //Gravidade horizontal
xscale = 1; //Escala horizontal do player


gravidadeh = function()
{
    var _space = keyboard_check_pressed(vk_space);
    //Se eu apertar espaço e eu estiver colidindo do lado esquerdo dele
    //eu vou voltar a ter um
    //Criando uma variavel para a colisão
    var _colih = place_meeting(x, y, obj_colisor.bbox_left)
    if (_space and _colih)
    {
        gravh = 1;
        
        show_message("oiiiiii")
    }
    
    var _colih2 = place_meeting(x, y, obj_colisor.bbox_right);
    if (_space and _colih2)
    {
        gravh = -1;
        
        show_message("oiiiiii")
    }
    //Adicionando a Gravidade horizontal
    x += gravh;
}

//Mudando gravidade do player
muda_lado_gravidade = function()
{
    //Se eu apertar espaço, eu vou mudar de lado
    if (space)
    {
        //Mudando de lado
        gravh *= -1;
    }
}