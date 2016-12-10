
@tag
Feature: Testar o login do usuario no sistema
##Historia 002 - Usu�rio Realiza Login
##Eu como usu�rio gostaria de logar no sistema para realizar as atividades propostas e melhorar minhas habilidades de programa��o

@tag1
Scenario: Testar Login Valido
Given Usuario entra com "italotog_@hotmail.com" e senha "123" validos
When  Usuario clica na opcao entrar
Then  Usuario deve estar logado no sistema
  
@tag2
Scenario: Testar Login Invalido
Given Usuario entra com "italotog_@hotmail.com" e senha "1234" invalidos
When  Usuario seleciona na opcao entrar
Then Deve ser exibida uma mensagem de erro para o usu�rio
