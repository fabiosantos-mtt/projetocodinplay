
@tag
Feature: Testar as informacoes do sonre
##Historia 014 - Usu�rio Visualiza Sobre
##Eu como usu�rio gostaria de visualizar mais informa��es sobre o sistema para solucionar d�vidas

@tag1
Scenario: Usuario Visualiza Informacoes do Ranking
Given Usuario logado no sistema
When  Usuario seleciona a opcao SOBRE
Then  Usuario deve ser direcionado para tela Sobre
And   Deve ser exibido os dados do Sobre a plataforma

