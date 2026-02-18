/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Variavel de controle sobre a escala do inimigo
xscale = 1;

//Fazendo um método onde, se eu estiver do lado esquerdo da tela, eu vou
//Olhar para o lado esquerdo dela
lado_certo = function()
{
    //Pegando a metade da room
    var _metade_roomx = room_width / 2;
    //Se o meu x estiver do lado esquerdo, eu vou olhar para o lado esquerdo
    if (x < _metade_roomx)
    {
        //Minha escala será 1 (esquerda)
        xscale = 1;
    }
    else if (x > _metade_roomx)
    {
        //Minha escala será -1 (direita)
        xscale = -1;
    }
}