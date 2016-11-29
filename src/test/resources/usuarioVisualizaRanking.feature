
@tag
Feature: Testar as informa��es do ranking de usu�rio
##Historia 011 - Usu�rio Visualiza Seu Ranking
##Eu como usu�rio gostaria de visualizar minha pontua��o e a pontua��o de outros usuarios para verificar meu desempenho

@tag1
Scenario: Usuario Visualiza Informacoes do Ranking
Given Usuario logado no sistema
When  Usuario seleciona a opcao RANKING
Then  Usuario deve ser direcionado para tela Ranking
And   Deve ser exibido os dados do ranking do usuario

@tag2
Scenario: Usuario Pesquisa dados de outro usuario com sucesso
Given Usuario logado no sistema
And   Usuario na tela Ranking
When  Usuario preenche o campo nome com "Gustavo"
And   Usuario seleciona a opcao Pesquisar
And   Usuario pesquisado existe
Then  Deve ser exibido o ranking com as informacoes do usuario pesquisado

@tag3
Scenario: Usuario Pesquisa dados de outro usuario sem sucesso
Given Usuario logado no sistema
And   Usuario na tela Ranking
When  Usuario preenche o campo nome com "Gustavo"
And   Usuario seleciona a opcao Pesquisar
And   Usuario pesquisado nao existe
Then  Deve ser exibido uma mensagem para o usuario informando que o usuario pesquisado nao existe
