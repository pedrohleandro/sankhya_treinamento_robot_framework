*** Settings ***
Library    collections
Library    BuiltIn 

*** Variables ***



*** Keywords ***

Contar de 0 a 9

    FOR  ${count}  IN     RANGER    0    9
        Log    ${count}
    END

Percorrer itens de uma lista    
   
