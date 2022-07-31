*** Settings ***
Resource    ../resource/Argumento_resource.resource

*** Test Cases ***

Somar dois valores
    ${Resultado}    Somar Dois números    1    2
    Log    ${Resultado}

Somar valores embutidos
    ${Resultado}    Somar dois números Embutidos "6" e "5"
    Log    ${Resultado}

Modelo de e-mail
    ${Resultado}    Exercícios - Argumentos e Retornos
    Log   ${Resultado}
