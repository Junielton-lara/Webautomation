*** Settings ***
Documentation        Aqui estarão presentes os cases de testes


Library    SeleniumLibrary


Resource             ../resources/package.robot

Test Setup           Abrir navegador
# Test Teardown        Fechar navegador

*** Test Cases ***

Caso de Teste 01: Efetuar user com sucesso
    Dado que o cliente esteja na tela de cadastro
    E preecher todos os campo
    Quando clicar em criar
    Então deve ser apresentada a mensagem "Úsuario Criado com sucesso"


Cenario: Criar usuário através da sessão de lista de usuários
    [Tags]        Lista_user
    Dado que eu esteja na tela de lista de usuários
    E clique na opção NOVO USUÁRIO
    E preecher todos os campo
    Quando clicar em criar
    Então deve ser apresentada a mensagem "Úsuario Criado com sucesso"


# Cenario: TESTE
#     [Tags]        TESTE
#     Testes