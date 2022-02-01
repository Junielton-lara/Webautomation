*** Settings ***
Documentation            Todas as configurações de Setup e Teardown do projeto estarão aqui.

Resource                  package.robot

*** Variables ***
${BROWSER}          chrome   
     

&{NOVO_USER}
...        nome=Junior
...        ultimo_nome=lara
...        email=Junior@gmail.com
...        endereco=rua
...        universidade=positivo
...        profissao=QA
...        genero=masculino
...        idade=25
*** Keywords ***
Abrir navegador
    Open Browser           browser=${BROWSER}       options=add_experimental_option('excludeSwitches', ['enable-logging'])
    Maximize Browser Window

# Fechar navegador
#     Close Browser