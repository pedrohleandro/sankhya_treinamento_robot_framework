*** Settings ***    
Resource    ../resource/API/API_Sanakhya.resource

*** Test Cases ***

Efeturar login no SankhyaOM
    Dado que tem as configurações da requisição
    Quando envio esta requisição de login
    Então valido o atributo status 1

