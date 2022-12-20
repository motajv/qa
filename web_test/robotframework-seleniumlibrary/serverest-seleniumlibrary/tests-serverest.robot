### Sessão para configuração, documentação, imports de arquivos e library's
*** Settings ***
Documentation       Esta suíte testa algumas das principais funcionalidades do site web ServeRest (https://front.serverest.dev/login). 
Resource            keywords-serverest.robot

Test Setup          Acessar Site ServeRest
Test Teardown       Fechar Navegador

### Sessão para criação dos cenarios de teste
*** Test Cases ***
###--------------------CT01 - Cadastrar Usuário Válido--------------------###
Cenário: Cadastrar Usuário
    [Documentation]    Este teste acessa a página de cadastro de usuário e certifica
    ...                se de fato estamos acessando ela.
    [tags]             CADASTRO_USUARIO
    Pagina de Cadastro
    Criar Usuario Valido e Preencher Dados para Cadastro
    Cadastrar

    