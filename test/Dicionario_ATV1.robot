*** Settings ***
Resource    ../resource/Dicionario_resource.resource

*** Test Cases ***
Imprimir meu dicionário de nomes
    [Tags]    Dicionario    
    [Documentation]    Teste para imprimir dicionario com dados
    Tenho um dicionário com nomes e imprimo eles

Imprimir minha Lista de Frutas
    [Tags]    Lista
    [Documentation]    Teste para imprimir Lista de frutas
    Tenho uma lista de Frutas e imprimo elas
