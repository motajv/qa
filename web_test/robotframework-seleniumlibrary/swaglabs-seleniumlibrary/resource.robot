*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}        googlechrome
${URL}            https://www.saucedemo.com/

*** Keywords ***
Acessar Site
    Open Browser        ${URL}        ${BROWSER}

Login Usuario Padrao
    Input Text      user-name        standard_user
    Input Text      password         secret_sauce
    Click Button    login-button

Validar Login Efetuado com Sucesso
    Page Should Contain Element    //span[@class='title'][contains(.,'Products')]

Selecionar "${PRODUTO}" e adicionar ao carrinho
    Click Element    //div[@class='inventory_item_name'][contains(.,'${PRODUTO}')]
    Click Element    //button[@class='btn btn_primary btn_small btn_inventory'][contains(.,'Add to cart')]

Abrir Carrinho e Verificar Produtos
    Click Element    //a[@class='shopping_cart_link'][contains(.,'1')]
    Click Element    checkout

Finalizar Compra
    Input Text        first-name        João
    Input Text        last-name         Mota
    Input Text        postal-code       99999999
    Click Button      continue
    Click Button      finish

Confirmação de Compra
    Page Should Contain Element    //h2[@class='complete-header'][contains(.,'THANK YOU FOR YOUR ORDER')]

Login Usuario Bloqueado
    Input Text      user-name        locked_out_user
    Input Text      password         secret_sauce
    Click Button    login-button

Validar Mensagem de Usuario Bloqueado
    Page Should Contain Element      //h3[@data-test='error'][contains(.,'Epic sadface: Sorry, this user has been locked out.')]

Fechar Navegador
    Sleep    5s
    Capture Page Screenshot
    Close Browser
