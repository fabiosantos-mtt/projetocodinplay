
Feature: Testar as informa��es do Desafio Semanal
##Historia 007 - Usu�rio Visualiza Desafio Semanal
##Eu como usu�rio desejo visualizar o desafio semanal para verificar se ele esta disponivel para realiza��o

@tag1
Scenario: Usuario Realiza Visualiza Informa��es do Desafio Semanal
Given Usuario logado no sistema
When  Usuario seleciona a opcao Home
Then  Deve ser direcionado para tela principal usuario
And   Na area Desafio Semanal, deve ser exibida os dados do desafio semanal para o usu�rio

