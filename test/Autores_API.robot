*** Settings ***

Suite Setup    Conectar na API
Resource    ../resource/API/Autores_API.resource
#Test Setup    Conectar na API

*** Test Cases ***
• Consultar lista de Autores 

    Requisitar todos os autores
    Conferir o status code 200
    Conferir o reason OK
    Conferir se retorna uma lista com “615" autores