*** Settings ***
Resource  ../main.robot
Library    OperatingSystem

*** Variables ***
&{form}
...  Input_Nome=//input[@id='firstName']
...  Input_Sobrenome=//input[@id='lastName']
...  Input_Email=//input[@id='userEmail']
...  Radio_Genero=//label[@for='gender-radio-1']
...  Input_Telefone=//input[@id='userNumber']
...  DataNascimento=//input[@id='dateOfBirthInput']
...  Input_Assuntos=//input[@id='subjectsInput']
...  SelecionaInput_Assuntos=//div[contains(@class, 'subjects-auto-complete__option') and contains(text(), 'Arts')]
...  PassaTempos=//label[@for='hobbies-checkbox-1']
...  Input_Endereco=//textarea[@id='currentAddress']
...  Arquivo=//input[@id='uploadPicture']
...  BTN_Submit=//button[@id='submit']
...  ValidaCadastro=//div[@id='example-modal-sizes-title-lg']

*** Keywords ***
Dado que o usuario acessa a aplicação
    Open Browser  ${geral.URL}   ${geral.Browser}
    Maximize Browser Window

Quando realiza o cadastro do formulario
    Wait Until Element Is Visible  ${form.Input_Nome}  1s
    Input Text                     ${form.Input_Nome}  ${registro.Nome}

    Wait Until Element Is Visible  ${form.Input_Sobrenome}  10s
    Input Text                     ${form.Input_Sobrenome}  ${registro.Sobrenome}

    Wait Until Element Is Visible  ${form.Input_Email}  10s
    Input Text                     ${form.Input_Email}  ${registro.Email}

    Wait Until Element Is Visible  ${form.Radio_Genero}  10s
    Click Element                  ${form.Radio_Genero}

    Wait Until Element Is Visible  ${form.Input_Telefone}  10s
    Input Text                     ${form.Input_Telefone}  ${registro.Telefone}

    Wait Until Element Is Visible  ${form.Input_Assuntos}  10s
    Input Text                     ${form.Input_Assuntos}  ${registro.Assuntos}
    Sleep                          1s
    Click Element                  ${form.SelecionaInput_Assuntos}

    Wait Until Element Is Visible  ${form.PassaTempos}  10s
    Click Element                  ${form.PassaTempos}

    File Should Exist              ${registro.CaminhoArquivo}
    Wait Until Element Is Visible  ${form.Arquivo}  10s
    Choose File                    ${form.Arquivo}  ${registro.CaminhoArquivo}
    Sleep                          5s

    Wait Until Element Is Visible  ${form.Input_Endereco}  10s
    Input Text                     ${form.Input_Endereco}  ${registro.Endereco}
    Sleep                          5s

    Wait Until Element Is Visible  ${form.BTN_Submit}  10s
    Click Element                  ${form.BTN_Submit}
    Sleep                          5s

Então o cadastro do formulario é realizado e validado
    Wait Until Element Is Visible  ${form.ValidaCadastro}  10s
    Element Should Be Visible      ${form.ValidaCadastro}
    Element Text Should Be         ${form.ValidaCadastro}  ${registro.MensagemDeValidacao}








