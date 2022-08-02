*** Settings ***
Documentation   Criando arquivo '.resource' do exercicio 'variaveis'
Library     Collections

*** Variables ***

&{Pessoas}      nome=Pedro  sobrenome=Leandro   idade=27    cidade=Uberlândia   estado=MG   bairro=Jardeim Europa  
@{Lista_Frutas}     mamao    banana    uva

*** Keywords ***
Tenho um dicionario com dados pessoais e imprimo eles
    Log To Console    \n imprimir o dicionario pessoa: \n${Pessoas}\n
    Log To Console  \n Olá me chamo ${Pessoas.nome}\n
    Log To Console  \n meu sobrenome é  ${Pessoas.sobrenome}\n
    Log To Console  \n minha idade é ${Pessoas.idade}\n

Tenho uma lista de frutas e imprimo elas

    Log To Console  \n imprimir as fruta \n${Lista_Frutas} \n