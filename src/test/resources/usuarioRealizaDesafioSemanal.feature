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
Feature: Testar a realiza��o do Desafio Semanal
##Historia 009 - Usu�rio Realiza Desafio Semanal
##Eu como usu�rio desejo solucionar o desafio semanal para obter pontua��o extra.

@tag1
Scenario: Usuario Realiza Desafio semanal com sucesso
Given Usuario logado no sistema
And   Usuario na tela principal
When  Usuario seleciona a opcao Iniciar Desafio Semanal
And   Desafio Semanal Desbloqueado
And   Usuario Seleciona a opcao Correta
And   Usuario Seleciona a opcao enviar
Then  Deve ser exibido para o usuario uma mensagem de sucesso informando que ele escolheu a respota certa
And   Deve ser feita a somatoria da pontuacao do desafio com a pontuacao atual do usuario

@tag2
Scenario: Desafio Semanal Bloqueado
Given Usuario logado no sistema
And   Usuario na tela principal
When  Usuario seleciona a opcao Iniciar Desafio Semanal
And   Desafio Semanal Bloqueado
Then  Deve ser exibido para o usuario uma mensagem de erro informando que o desafio semanal esta bloqueado

@tag3
Scenario: Usuario Realiza Desafio Semanal sem sucesso
Given Usuario logado no sistema
And   Usuario na tela principal
When  Usuario seleciona a opcao Iniciar Desafio Semanal
And   Desafio Semanal Desbloqueado
And   Usuario Seleciona a opcao Incorreta
And   Usuario Seleciona a opcao enviar
Then  Deve ser exibido para o usuario uma mensagem de erro informando que ele escolheu a respota errada