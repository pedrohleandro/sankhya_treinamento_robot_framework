* Variables *

@{Frutas}    morango    banana    kiwi    abacaxi    manga
@{Paises}    Brasil    Argentina    Chile    Mexico    Peru

* Keywords *

Contar de 0 a 9

    FOR  ${count}  IN RANGE    0    9
        Log    ${count}
    
    END
    
Percorrer itens de uma lista
    FOR  ${Fruta}  IN  @{Frutas}
        Log    ${Fruta}
    END

Imprimir nome de paise
    FOR  ${Pais}  IN  @{Paises}
        Log    ${Pais}
    END 

Contar números de 0 a 10
    FOR  ${count}  IN RANGE    0    11
        Log  Estou no número: ${count}
    END

Tomar decisões

  FOR  ${count}  IN RANGE    0    11
    IF  '${count}' == '5'
        Log    Estou no número: ${count} de 0 a 10
    ELSE IF    '${count}'=='8'
        Log    Estou no número ${count} de 0 a 10
    END  
  END