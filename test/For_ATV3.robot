*** Settings *** 
Resource    ../resource/For_resource.resource

*** Test Cases ***

Repetir de 0 a 9
        ${Resultado}    Contar de 0 a 9
        Log    ${Resultado} 

Repetir itens de uma lista
        ${Resultado}    Percorrer itens de uma lista
        Log    ${Resultado} 