* Settings *

Suite Setup       setup da minha suite de teste
Suite Teardown    teardown da minha suite de teste
Resource          ../resource/Setup_Teardown.resource

* Test Cases *

Cenário de Login SankhyaOM
    [Setup]    setup dos meus testes
    [Teardown]    teardown da minha suite de teste
    Log To Console    \n\n Estou dentro do meu teste 1 \n\n

Cenário de Compra dentro do Sankhya OM
    Log To Console    \n\n Estou dentro do meu teste 2 \n\n