*** Settings ***    

Library    BuiltIn  
Library    collections  
Library    RequestsLibrary

*** Variables ***

${URL_API}    https://fakerestapi.azurewebsites.net
${path_params}    /api/v1/Authors
${status}    OK

*** Keywords ***

# SERTUP e TEARDOWNS    
Conectar na API
    Create Session    FakeAPI    ${URL_API}

#AÇÔES

Requisitar todos os autores
    #${Respostas}    Get Request    FakeAPI    Authors
    #Log    ${Respostas.text}
    #Set Test Variable    ${Respostas}
    ${end_point}    Catenate    ${URL_API}${path_params}
    ${response}    GET    ${end_point}
    Set Test Variable     ${response}

Conferir o status code ${code}  
    Should Be Equal As Strings   200    ${response.status_code}
    Log    ${response}
    
 Conferir o reason OK
     Should Be Equal    ${status}    ${response.reason}

Conferir se retorna uma lista com ${Num_Aut} autores
    ${dados_livros}    Set Variable    ${response.json()}[379]
    Log    ${dados_livros}