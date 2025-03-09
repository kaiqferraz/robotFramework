*** Settings ***
Resource  ../main.robot

*** Variables ***
&{form}
...  Input_Nome=//input[@id='firstName']
...  Input_Sobrenome=//input[@id='lastName']
...  Input_Email=//input[@id='userEmail']
# ...   Genero (radio)
...  Input_Telefone=//input[@id='userNumber']
# ...   DataNascimento (date)
...  Input_Assuntos=//input[@id='subjectsInput']
# ...   PassaTempos (checkbox)
...  Input_Endereco=//textarea[@id='currentAddress']
# ...   Arquivo (file)
# ...   Estado (select)
# ...   Cidade (select)
...   BTN_Submit=//button[@id='submit']

*** Keywords ***
Dado que o usuario acessa a aplicação
  Open Browser  ${geral.URL}   ${geral.Browser}
  Maximize Browser Window

Quando realiza o cadastro do formulario

  Wait Until Element Is Visible  ${form.Input_Nome}  10s
  Input Text                     ${form.Input_Nome}  ${registro.Nome}

  Wait Until Element Is Visible  ${form.Input_Sobrenome}  10s
  Input Text                     ${form.Input_Sobrenome}  ${registro.Sobrenome}

  Wait Until Element Is Visible  ${form.Input_Email}  10s
  Input Text                     ${form.Input_Email}  ${registro.Email}

   Wait Until Element Is Visible  ${form.Input_Telefone}  10s
   Input Text                     ${form.Input_Telefone}  ${registro.Telefone}

   Wait Until Element Is Visible  ${form.Input_Assuntos}  10s
   Input Text                     ${form.Input_Assuntos}  ${registro.Assuntos}

   Wait Until Element Is Visible  ${form.Input_Endereco}  10s
   Input Text                     ${form.Input_Endereco}  ${registro.Endereco}
   Sleep   5s

   Wait Until Element Is Visible  ${form.BTN_Submit}  10s
    Click Element                 ${form.BTN_Submit}

  


  



