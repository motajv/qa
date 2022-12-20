### Sessão para configuração, documentação, imports de arquivos e library's
*** Settings ***
Documentation       Esta suíte testa algumas das principais funcionalidades do site Swaglabs. 
Resource            resource.robot

Test Setup          Acessar Site
Test Teardown       Fechar Navegador

### Sessão para criação dos cenarios de teste
*** Test Cases ***
###----------------------------CT01 - Login----------------------------###
Cenário 1.1: Login com usuário padrão
    [tags]            CT1.1
    Login Usuario Padrao
    Validar Login Efetuado com Sucesso

Cenário 1.2: Login com usuário bloqueado
    [Tags]            CT1.2
    Login Usuario Bloqueado
    Validar Mensagem de Usuario Bloqueado

###----------------------------CT02 - Fluxo de Compra----------------------------###  
Cenário 2.1: Fluxo de Compra  
    [tags]            CT2.1
    Login Usuario Padrao
    Validar Login Efetuado com Sucesso
    Selecionar "Sauce Labs Fleece Jacket" e adicionar ao carrinho
    Abrir Carrinho e Verificar Produtos
    Finalizar Compra



