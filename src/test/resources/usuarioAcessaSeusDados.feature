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
Feature: Testar Informa��es do Usuario
##Historia 003 - Usu�rio Visualiza o painel de informa��es e progresso
##Eu como usu�rio gostaria de visualizar meus dados para avaliar meu progresso

@tag1
Scenario: Usuario Visualiza Informacoes
Given Usuario logado no sistema
When  Usuario seleciona a opcao Home
Then  Usuario deve ser direcionado para tela principal usuario
And   Usuario visualiza as informa��es do site com os seus dados
