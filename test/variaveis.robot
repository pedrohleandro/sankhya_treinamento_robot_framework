*** Settings ***
Resource    ../resource/variaveis.resource

*** Test Cases ***

exercicio 1 - imprimir dicionario com dados pessoais
    [Tags]  dicionario
    [Documentation]     teste para imprimir dicionario com dados
    Tenho um dicionario com dados pessoais e imprimo eles

exercicio 2 - imprimir minha lista de frutas
    [Tags]  dicionario
    [Documentation]     teste para imprimir uma lista de frutas
    Tenho uma lista de frutas e imprimo elas