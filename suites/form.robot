*** Settings ***
Resource  ../resources/main.robot
Test Setup  Dado que o usuario acessa a aplicação
Test Teardown  Fechar o navegador

*** Test Cases ***

TESTE 01 - Realizando cadastro de um novo usuário
    Quando realiza o cadastro do formulario



