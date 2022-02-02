*** Settings ***
Library         SeleniumLibrary
Resource        Summer.resource
Test Setup      Abrir o site da aplicação
Test Teardown   Close Browser

*** Test Cases ***
Cadastro
  Abrir o site da aplicação
  Clicar no botão (+) para cadastrar um novo filme
  Adicionar uma URL de imagem
  Inserir "Shrék 999" como titulo do filme
  Inserir "O filmê mais legal do Thiago" a descrição do filme
  Clicar em "Salvar"

Edição
  Clicar no botão "Detalhes" de um cartão
  Alterar a URL da imagem
  Alterar o título para: "Shèeek"
  Alterar a descrição para: "Descrição alterada"
  Clicar em "Salvar_2"

