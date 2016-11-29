
@tag
Feature: Testar o login do usuario no sistema
##Historia 002 - Usu�rio Realiza Login
##Eu como usu�rio gostaria de logar no sistema para realizar as atividades propostas e melhorar minhas habilidades de programa��o

@tag1
Scenario: Testar Login Valido
Given  Usuario esta na pagina incial
When  Preenche os campos login com <login>, senha com <senha> e clica em entrar
And   login e senha s�o validos
Then  Deve ser exibida a p�gina principal usuario
  
@tag2
Scenario: Testar Login Invalido
Given Usuario esta na pagina incial
When Preenche os campos login com <login>, senha com <senha> e clica em entrar
And   login ou senha s�o invalidos
Then Deve ser exibida uma mensagem de erro para o usu�rio
