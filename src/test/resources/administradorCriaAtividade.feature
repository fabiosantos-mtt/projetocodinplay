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
Feature: Testar criacao de Atividade
##Historia 016 - Administrador Cria Nova Atividade
##Eu como Administrador desejo criar uma nova atividade para um n�vel/tarefa para manter o sistema sempre atualizado

@tag1
Scenario: Administrador Acessa De Cadastro de Tarefa
Given Administrador logado no sistema
When  Administrador seleciona a opcao NOVA TAREFA
Then  Administrador deve ser direcionado para tela nova tarefa

@tag2
Scenario: Administrador Cadastra Tarefa com Sucesso
Given Administrador logado no sistema
And   Administrador na tela Cadastro de Tarefas
When  Administrador seleciona o tipo da atividade "Tarefa"
And   Administrador preenche a Descricao
And   Administrador seleciona o nivel
And   Administrador preenche os campos das alternativas e escolhe a resposta correta
And   Administrador Seleciona a opcao Salvar
And   Campos validos
Then  Deve ser exibido para o adminstrador uma mensagem de sucesso informando que a atividade foi cadastrada

@tag3
Scenario: Administrador Cadastra Tarefa sem Sucesso
Given Administrador logado no sistema
And   Administrador na tela Cadastro de Tarefas
When  Administrador seleciona o tipo da atividade "Tarefa"
And   Administrador preenche a Descricao
And   Administrador seleciona o nivel
And   Administrador preenche os campos das alternativas e escolhe a resposta correta
And   Administrador Seleciona a opcao Salvar
And   Campos invalidos
Then  Deve ser exibido para o adminstrador uma mensagem de erro informando que a atividade nao foi cadastrada

