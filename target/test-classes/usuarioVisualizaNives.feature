#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios 
#<> (placeholder)
#""
## (Comments)

#Sample Feature Definition Template
@tag
Feature: Testar as informa��es de nivel do usuario
##Historia 004 - Usu�rio Visualiza N�veis
##Eu como usu�rio gostaria de visualizar os n�veis e verificar quais eu j� realizei e quais est�o desbloqueados

@tag1
Scenario: Usuario Visualiza Informacoes
Given Usuario logado no sistema
When  Usuario seleciona a opcao JOGAR
Then  Usuario deve ser direcionado para tela progressao do usuario
And   Deve ser exibido os dados de progress�o do usuario
And   Deve ser exibido os n�veis e seu status de acordo com a progress�o do usuario
