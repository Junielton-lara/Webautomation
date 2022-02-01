

*** Test Cases regras jogo Uno do Mal***
Caso de Teste 01: Validar nova regra de carta de compra - Carta + 2
    
    Dado que o um dos jogadores tem a carta que obriga a compra + 2
    Quando esta carta é jogada 
    Então o proximo jogador deve comprar 4 cartas
​       
Caso de Teste 02: Validar nova regra de carta de compra - Carta + 4
    
    Dado que o um dos jogadores tem a carta que obriga a compra + 4
    Quando esta carta é jogada 
    Então o proximo jogador deve comprar 8 cartas


Caso de Teste 03: Validar nova regra de combinações de cartas
   
    Dado que o jogador possua cartas com cores diferentes mas sendo dos mesmos numeros.
    Quando é sua vez de jogar.
    Então essas cartas pode ser eliminadas de sua coleção de cartas.


Caso de Teste 04: Validar regra de compra de cartas acumulativa da mesma cor + 2
   
    Dado que o jogador 1 jogar a carta “+2” 
    Quando é essa carta tem a cor vermelha
    E o jogador 2 tem a carta + 2 tambem com a cor vermelha 
    Então e essas cartas vão se acumulando até um jogador não ter cartas para jogar e 
    comprar o total acumulado das cartas de compra.

Caso de Teste 05: Validar regra de compra de cartas acumulativa da mesma cor + 4
   
    Dado que o jogador 1 jogar a carta “+4” 
    Quando o proximo jogador tambem joga a carta mais 4
    Então caso o proximo jogador não tenha cartas de compra o mesmo devera cobrar 16 cartas devido a regra
    do criterio de aceite Caso de Teste 02.


Caso de Teste 06: Validar regra de compra quando cor escolhida do + 4 se o proximo jogador tiver a cor sendo um + 2
   
    Dado que o jogador 1 jogar a carta “+4” 
    E a coor escolhida dessa carta seja vermelha
    E o proximo jogador tenha o + 2 com a cor vermelha
    Entao o proximo jogador devera comprar 12 cartas devido as regras do criterio de aceite Caso de Teste 01 e Caso de Teste 02.





DUVIDA:

Quando esta sendo acumuladas as compras o que ocorre quando o priximo jogador jogar a carta 
de inverter o o jogo?
O jogador anterior deve efetuar a compra?








Acessar cadastros > funcionarios > incluir      |     Devera apresentar a dele de cadastros
Incluir dados cadastrais                        |     Dados deverão incluidos com sucesso
Clicar no botão [CADASTRAR]                     |     Devera apresentar a mensagem "cadastro edd"
                                                    