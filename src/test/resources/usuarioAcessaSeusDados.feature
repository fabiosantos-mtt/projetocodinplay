
@tag
Feature: Testar Informa��es do Usuario
##Historia 003 - Usu�rio Visualiza o painel de informa��es e progresso
##Eu como usu�rio gostaria de visualizar meus dados para avaliar meu progresso

@tag1
Scenario: Usuario Visualiza Informacoes
Given Usuario logado no sistema
When  Usuario seleciona a opcao Home
Then  Usuario deve ser direcionado para tela principal usuario
And   Usuario visualiza as informa��es do site com os seus dados
