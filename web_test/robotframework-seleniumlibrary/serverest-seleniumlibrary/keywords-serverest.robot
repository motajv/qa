*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary        locale=pt_BR

*** Variable ***
${BROWSER}              googlechrome
${URL}                  https://front.serverest.dev/login  
${CADASTRO}             xpath=//a[@data-testid='cadastrar'][contains(.,'Cadastre-se')]
${NOME}                 Ramon Dino
${EMAIL}                dinopro@qa.com
${PASSWORD}             dinopro1995         

*** Keywords ***
Acessar Site Serverest
    Open Browser                     ${URL}  ${BROWSER}
    Maximize Browser Window

Pagina de Cadastro
    Wait Until Element Is Visible    ${CADASTRO}
    Click Element                    ${CADASTRO}
    Wait Until Page Contains         Cadastro

Criar Usuario Valido e Preencher Dados para Cadastro
    Input Text        nome        ${NOME}
    Input Text        email       ${EMAIL}
    Input Password    password    ${PASSWORD}

Cadastrar
    Click Button      //button[@data-testid='cadastrar'][contains(.,'Cadastrar')]

Fechar Navegador
    Capture Page Screenshot
    Close Browser