*** Settings ***

Library    SeleniumLibrary
#Suite Setup    Acessar Sankhya OM
Suite Teardown    Fechar Navegador

*** Variables ***
${URL}               https://atacadistriborclhd411.qa.sankhya.com.br/mge/
${campo_usuario}     css:#login
${campo_password}    password
${botao_logar}       //*[contains(@class, "btn-login")]    #//button[@text()="Entrar" and @class="btn-login"]
${usuario}           sup
${senha}             atacado
${wallpaper}         //img[contains(@src,"evo-wallpaper")]
*** Keywords ***

#SUITE E TEARDOWNS

#Acessar Sankhya OM
    #Open Browser    url=${URL}    browser=chrome

Fechar Navegador
    Close Browser

#AÇÕES
Dado que estou com o navegador aberto na pagina da Sankhya
    Open Browser    url=${URL}    browser=chrome
    
Quando realizo o login no ERP
    Wait Until Element Is Visible    ${campo_usuario}
    Input Text    ${campo_usuario}    ${usuario}
    Wait Until Element Is Visible    ${campo_password}
    Input Text    ${campo_password}    ${senha}
    Wait Until Element Is Visible    ${botao_logar}
    Click Button    ${botao_logar}
Então valido que estou logado
    #Element Should Be Visible     ${wallpaper}   
    Wait Until Page Contains Element    ${wallpaper}      

*** Test Cases ***

Amamos a Sankhya ERP e faremos o login nela
    Dado que estou com o navegador aberto na pagina da Sankhya
    Quando realizo o login no ERP
    Então valido que estou logado