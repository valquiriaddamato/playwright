*** Settings ***
Resource    ../resources/serve-rest-front.resource

*** Test Cases ***
Login com sucesso
    Abrir o navegador
    Ir para o site Serve Rest Front
    Preencher os dados de login e confirmar
    Validar mensagem de boas vindas na home page

Cadastro com sucesso
    Abrir o navegador
    Ir para o site Serve Rest Front
    Preencher os dados do novo usuario e cadastrar
    Validar mensagem de boas vindas na home page
