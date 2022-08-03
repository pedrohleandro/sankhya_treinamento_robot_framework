*** Settings ***

Library    RequestsLibrary
Library    OperatingSystem

*** Variables ***

${URL_Base}    https://atacadistriborclhd411.qa.sankhya.com.br/
${payload}    ${EMPTY}
${params}    
${path_params}    mge/service.sbr?
${end_point}
${response}

*** Keywords ***

Dado que tem as configurações da requisição
    ${payload_string}    Get File    ./sankhya_treinamento_robot_framework/resource/API/Login.json
    ${params}    Create Dictionary    serviceName=MobileLoginSP.login
    ...                               outputType=json
    ${end_point}    Catenate    ${URL_Base}${path_params}
    Set Test Variable    ${payload}    ${payload_string}
    Set Test Variable    ${params}
    Set Test Variable    ${end_point}

Quando envio esta requisição de login
    ${response}    POST    url=${end_point}    params=&{params}    data=${payload}
    Set Test Variable    ${response}
Então valido o atributo status ${status}
    ${response_status}    Set Variable    ${response.json()}[status]
    Should Be Equal As Integers    ${status}    ${response_status}

Adicionar parametro Jsseion

    ${response.json()}[responseBody][]    
Dado que eu estou logado
    Dado que tem as configurações da requisição
    Quando envio esta requisição de login
    Adicionar parametro Jsseion  

Quando crio um pedido
    
Então valido o meu pedido