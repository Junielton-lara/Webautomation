*** Settings ***
Library     RequestsLibrary
Documentation  aqui estarão presentes os testes de API automatizados.

*** Test Cases ***

Teste API 01: Get livros
    Create Session         BooksAPI                https://fakerestapi.azurewebsites.net/api/v1            disable_warnings=${True}
    ${HEADERS}             Create Dictionary       content-type=application/json
    ${RESPOSTA}            GET On Session         booksAPI         Books/3               expected_status=any        
    Log                        ${RESPOSTA.text}
    Set Test Variable          ${RESPOSTA}

    Should Be Equal As Strings    ${RESPOSTA.status_code}       200
    Should Be Equal As Strings    ${RESPOSTA.reason}            OK