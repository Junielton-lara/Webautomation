*** Settings ***
Documentation        Aqui estarão presentes todas as keywords dos testes.

Resource             ../package.robot
Library    OperatingSystem

*** Variables ***

*** Keywords ***
#Caso de Teste 01: Efetuar user com sucesso
Dado que o cliente esteja na tela de cadastro
    Open Browser    abaut:blank        Chrome        options=add_experimental_option('excludeSwitches', ['enable-logging'])

    Go To               https://automacaocombatista.herokuapp.com/users/new
    Maximize Browser Window
    Capture Page Screenshot
    
    Title Should Be                          Automação com Batista
    Wait until Element is Visible            xpath=//*[contains(text(), 'Novo Usuário!!')]
    Capture Page Screenshot
E preecher todos os campo

    Input Text        id=user_name             ${NOVO_USER.nome}
    Input Text        id=user_lastname         ${NOVO_USER.ultimo_nome}
    Input Text        id=user_email            ${NOVO_USER.email}
    Input Text        id=user_address          ${NOVO_USER.endereco}
    Input Text        id=user_university       ${NOVO_USER.universidade}
    Input Text        id=user_profile          ${NOVO_USER.profissao}
    Input Text        id=user_gender           ${NOVO_USER.genero}
    Input Text        id=user_age              ${NOVO_USER.idade}
    Capture Page Screenshot

    Sleep    2
Quando clicar em criar
    Click Element    xpath=//input[@value='Criar']
    Capture Page Screenshot

Então deve ser apresentada a mensagem "Úsuario Criado com sucesso"
    Wait until Element is Visible            xpath=//*[contains(text(), 'Usuário Criado com sucesso')]

    Wait Until Page Contains    ${NOVO_USER.nome}
    Wait Until Page Contains    ${NOVO_USER.ultimo_nome}
    Wait Until Page Contains    ${NOVO_USER.email}
    Wait Until Page Contains    ${NOVO_USER.endereco}
    Wait Until Page Contains    ${NOVO_USER.universidade}
    Wait Until Page Contains    ${NOVO_USER.profissao}
    Wait Until Page Contains    ${NOVO_USER.genero}
    Wait Until Page Contains    ${NOVO_USER.idade}
    
    Capture Page Screenshot



# Cenario: Criar usuário através da sessão de lista de usuários
Dado que eu esteja na tela de lista de usuários    
    Go To     https://automacaocombatista.herokuapp.com/users 
    Sleep     2
    Maximize Browser Window
    Capture Page Screenshot

E clique na opção NOVO USUÁRIO
    Click Element         xpath=//*[contains(text(), 'Novo Usuário')]
    Sleep     2 
    Capture Page Screenshot