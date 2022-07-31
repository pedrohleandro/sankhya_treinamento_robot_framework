*** Settings ***
Library    BuiltIn  
Library    collections  

*** Variables ***

&{Pessoa}    nome=pedro    sobrenome=leandro    idade=27    email=@robot.com


*** Keywords ***

Somar Dois números
    [Arguments]    ${NUM_A}    ${NUM_B}
    ${Soma}    Evaluate    ${NUM_A}+${NUM_B}
    [Return]    ${Soma}


Somar dois números Embutidos "${NUM_A}" e "${NUM_B}"
    ${Soma}    Evaluate    ${NUM_A}+${NUM_B}
    [Return]    ${Soma}

Exercícios - Argumentos e Retornos
    ${email}    Catenate    \n${Pessoa.nome}_${Pessoa.sobrenome}_${Pessoa.idade}${Pessoa.email}
    [Return]    ${email}
