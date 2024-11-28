*** Settings ***
Resource    ../resources/api_testing_usuarios.resource

*** Variables ***

*** Test Cases ***
Cenário 01: Cadastrar um novo usuario com sucesso na ServeRest
    Criar um usuário novo
    Cadastrar o usuário criado na ServeRest    email=${email_teste}    status_code_desejado=201
    Conferir se o usuario foi cadastrado corretamente
    
Cenário 02: Cadastrar um usuário já existente
    Criar um usuário novo
    Cadastrar o usuário criado na ServeRest    email=${email_teste}    status_code_desejado=201
    Vou repetir o cadastro do usuário
    Verificar se a API não permitiu o cadastro repetido
    
