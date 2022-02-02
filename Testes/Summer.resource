*** Variables ***
${SITE}                 http://localhost:3000/
${NAVEGADOR}            Chrome
${BOTAO_CADASTRAR}      css=#root > button
${CAMPO_IMAGEM}         css=#formUrl
${URL_IMAGEM}           https://www.syfy.com/sites/syfy/files/styles/blog_post_featured_media_tablet/public/2021/06/shrekfest-shrek-super-slam.png?h=28b1d41c
${CAMPO_TITULO}         css=#formTitle
${TITULO}               Shrék 999
${CAMPO_DESCRICAO}      css=#formDescription
${DESCRICAO}            O filmê mais legal do Thiago
${BOTAO_SALVAR}         css=body > div.fade.modal.show > div > div > div.modal-footer > button
${BOTAO_SALVAR_2}       css=body > div.fade.modal.show > div > div > div.modal-footer > button.btn.btn-success
${BOTAO_DETALHES}       css=#uncontrolled-tab-example-tabpane-all > div > div > div:nth-child(1) > div > div > button
${NOVA_URL_IMAGEM}      https://www.magazine-hd.com/apps/wp/wp-content/uploads/2017/04/Carros_3.jpg
${NOVO_TITULO}          Shèeek
${NOVA_DESCRICAO}       Descrição alterada


*** Keywords ***
Abrir o site da aplicação
  Open Browser      ${SITE}     ${NAVEGADOR}
  Maximize Browser Window

Clicar no botão (+) para cadastrar um novo filme
  wait and Click  ${BOTAO_CADASTRAR}

Adicionar uma URL de imagem
  wait and Input Text  ${CAMPO_IMAGEM}         ${URL_IMAGEM}

Inserir "Shrék 999" como titulo do filme
  wait and Input Text        ${CAMPO_TITULO}         ${TITULO}

Inserir "O filmê mais legal do Thiago" a descrição do filme
  wait and Input Text        ${CAMPO_DESCRICAO}      ${DESCRICAO}

Clicar em "Salvar"
  wait and Click     ${BOTAO_SALVAR}

Clicar no botão "Detalhes" de um cartão
  Wait and Click        ${BOTAO_DETALHES}

Alterar a URL da imagem
  Wait and Input Text   ${CAMPO_IMAGEM}     ${NOVA_URL_IMAGEM}

Alterar o título para: "Shèeek"
  Wait and Input Text   ${CAMPO_TITULO}     ${NOVO_TITULO}

Alterar a descrição para: "Descrição alterada"
  Wait and Input Text   ${CAMPO_DESCRICAO}  ${NOVA_DESCRICAO}

Clicar em "Salvar_2"
  Wait and Click    ${BOTAO_SALVAR_2}
  Sleep  10










wait and Click
  [Arguments]                     ${ELEMENTO}
  wait Until Element is Viseble   ${ELEMENTO}
  wait Until Element is Enabled   ${ELEMENTO}
  Click Element                   ${ELEMENTO}

wait and Input Text
  [Arguments]                     ${ELEMENTO} ${TEXTO}
  wait Until Element is Viseble   ${ELEMENTO}
  wait Until Element is Enabled   ${ELEMENTO}
  Click Element                   ${ELEMENTO} ${TEXTO}