* Settings *
Library  SeleniumLibrary

* Variables *
${input_name}              //*[@id="nome"]
${input_sobrenome}         //*[@id="sobrenome"]
${input_email}             //*[@id="email"]
${input_senha}             //*[@id="senha"]
${input_telefone}          //*[@id="telefone"]
${input_cep}               //*[@id="CEP"]
${selecionar_checkbox}     //*[@id="op1"]
${botao_enviar}            //*[@id="enviar"]


* Keywords *
abrir navegador e acessar o site
    Open Browser     http://127.0.0.1:5500/index.html     chrome

Preencher campos
    Input Text     ${input_name}          Victor
    Sleep                                 1s
    Input Text     ${input_sobrenome}     Oliveira
    Sleep                                 1s
    Input Text     ${input_email}         victor.oliveira2049b@gmail.com
    Sleep                                 1s
    Input Text     ${input_senha}         12345
    Sleep                            1s
    Input Text     ${input_telefone}      85337648305
    Sleep                                 1s
    Input Text     ${input_cep}           60532420
    Sleep                                 1s


Selecionando Sexo
    Select From List By Label    sexo    Masculino
    Sleep                                 1s

Marcando Newslatter
   Select Checkbox              ${selecionar_checkbox}
   Sleep                        1s


Clicando no Botão Enviar
    Click Button                ${botao_enviar}
    Sleep                       1s

*** Tasks ***
Cenario 1: Preencher Formulario
    abrir navegador e acessar o site
    Preencher campos
    Selecionando Sexo
    Marcando Newslatter
    Clicando no Botão Enviar
  