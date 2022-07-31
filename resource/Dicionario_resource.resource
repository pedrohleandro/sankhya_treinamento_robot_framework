*** Settings ***

Documentation    criando arquivo '.resource' do exercício de variavies
Library    collections    

*** Variables ***

&{Pessoa}    nome=Pedro    sobrenome=Leandro    idade=27    cidade=Uberlândia    estado=Minas Gerais    bairro=Jardim Europa
@{Frutas}    manga    mamão    laranja    abacaxi    morango

*** Keywords ***

Tenho um dicionário com nomes e imprimo eles
    Log To Console    \n Aqui eu imprimo todo meu dicionario de nomes ${Pessoa} \n
    Log To Console    \n Aqui eu imprimo o item selecionado que no caso foi: ${Pessoa.nome} \n
    Log To Console    \n Aqui eu imprimo o item selecionado que no caso foi: ${Pessoa.sobrenome} \n
    Log To Console    \n Aqui eu imprimo o item selecionado que no caso foi: ${Pessoa.idade} \n
    Log To Console    \n Aqui eu imprimo o item selecionado que no caso foi: ${Pessoa.cidade} \n
    Log To Console    \n Aqui eu imprimo o item selecionado que no caso foi: ${Pessoa.estado} \n
    Log To Console    \n Aqui eu imprimo o item selecionado que no caso foi: ${Pessoa.bairro} \n

Tenho uma lista de Frutas e imprimo elas
     Log To Console    \n Aqui eu imprimo a lista completa: ${Frutas} \n
     Log To Console    \n Aqui eu imprimo a lista de acordo com a ordem informada: ${Frutas[0]} \n
     Log To Console    \n Aqui eu imprimo a lista de acordo com a ordem informada: ${Frutas[1]} \n
     Log To Console    \n Aqui eu imprimo a lista de acordo com a ordem informada: ${Frutas[2]} \n
     Log To Console    \n Aqui eu imprimo a lista de acordo com a ordem informada: ${Frutas[3]} \n
     Log To Console    \n Aqui eu imprimo a lista de acordo com a ordem informada: ${Frutas[4]} \n