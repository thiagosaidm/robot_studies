*** Settings ***
Documentation    Exemplo de teste usando Robot Framework
Library    String
Library    Faker

*** Test Cases ***
Criar e Imprimir E-mail Personalizado
    ${nome} =    Set Variable    Said
    ${sobrenome} =    Set Variable    Santos
    ${email} =    Criar E-mail Personalizado    ${nome}    ${sobrenome}
    Log To Console    E-mail personalizado: ${email}

*** Keywords ***
Criar E-mail Personalizado
    [Arguments]    ${nome}    ${sobrenome}
    ${palavra_aleatoria} =    Generate Random String    8    [NUMBERS]
    ${email} =    Catenate    ${nome}    ${sobrenome}    ${palavra_aleatoria}    @testerobot.com
    [Return]    ${email}
