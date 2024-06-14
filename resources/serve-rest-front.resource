*** Settings ***
Library    Browser
Library    FakerLibrary

*** Variables ***
${BROWSER}    chromium
${HEADLESS}    false
${URL_SITE}    https://front.serverest.dev/

*** Keywords ***
Abrir o navegador
    New Browser    browser=${BROWSER}
    ...    headless=${HEADLESS}

    New Context    viewport={'width': 1200, 'height': 800}

Ir para o site Serve Rest Front
    New Page    url=${URL_SITE}
    ${title}    Get Title  ==  Front - ServeRest

Preencher os dados de login e confirmar
    Fill Text    input[id='email']    valquiriaddamato+serverest@gmail.com
    Fill Text    input[id='password']    Testserverest2024
    Click    button[data-testid='entrar']

Preencher os dados do novo usuario e cadastrar
    Click    css=a[data-testid='cadastrar']
    ${EMAIL}    FakerLibrary.Email
    Fill Text    input[id='nome']    Val
    Fill Text    input[id='email']    ${EMAIL}
    Fill Text    input[id='password']    1235679
    Check Checkbox    input[id='administrador']
    Click    button[data-testid='cadastrar']

Validar mensagem de boas vindas na home page
    Wait For Elements State    //h1[contains(.,'Bem Vindo')]    visible
    Get Text     h1  *=  Bem Vindo
