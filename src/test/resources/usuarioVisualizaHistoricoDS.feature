
@tag
Feature: Testar as informa��es do Historico do Desafio Semanal
##Historia 008 - Usu�rio Visualiza Hist�rico do Desafio Semanal
##Eu como usu�rio desejo visualizar meu hist�rico de desafios semanais, para verificar quais eu realizei ou n�o

@tag1
Scenario: Usuario Realiza Visualiza Informa��es do Historico do Desafio Semanal
Given Usuario logado no sistema
When  Usuario seleciona a opcao Home
Then  Deve ser direcionado para tela principal usuario
And   Na area Desafio Semanal, deve ser exibida os dados do historico do desafio semanal para o usu�rio
