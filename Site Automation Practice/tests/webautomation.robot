*** Settings ***
Documentation        Aqui estarão presentes os primeiros testes automatizados Web.

Resource             ../resources/package.robot

Test Setup           Abrir navegador
Test Teardown        Fechar navegador

*** Test Cases ***
Caso de Teste 01: Pesquisar produto existente​
    [Tags]            PESQUISAR
    Acessar a página home do site Automation Practice​
    Digitar o nome do produto "Blouse" no campo de pesquisa​
    Clicar no botão pesquisar​
    Conferir se o produto "Blouse" foi listado no site
​
Caso de Teste 02: Logar no YouTube​
    Abrir App​
    Logar no aplicativo com a conta x​
    Entrar no menu “Explorar”​
    Usar swipe de tela até o 10 item da tela​
    Clicar no vídeo 

Caso de Teste 03: Usar método Swipe na tela​​
    Abrir App​​ 
    Entrar no menu “Explorar”​​ 
    Usar swipe de tela até o 10 item da tela​​    
    Clicar no vídeo
