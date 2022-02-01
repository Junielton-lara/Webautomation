*** Settings ***
Documentation        Aqui estarão presentes todas as variáveis/elementos da tela Home

*** Variables ***
&{HOME}
#Login

...     TITLE_PAGE_HOME=O Boticário 
...     USER_LOGIN=username
...     USER_SENHA=password
...     BTN_LIGIN=id=btnLogin
...     CONFIRMA_LOGIN=bodyControl

#captacao de pedido

...     MENU_ATENCIMENTO=xpath://*[@id="menu-cod-1"]/a
...     SUB_MENU_PEDIDOS=xpath://*[@id="submenu-cod-1"]/div/div[1]/ul/li[1]/a
...     NOVO_PEDIDO=xpath://*[@id="submenu-cod-1"]/div/div[1]/ul/li[1]/ul/li[1]/a
...     buscarPessoaCBP_identificador=id=ContentPlaceHolder1_buscarPessoaCBP_identificador_T2
...     BTN_INICIAR_PEDIDO=id=ContentPlaceHolder1_btIniciarCaptacao_btn
...     MODELO_CENTRO_SERVICO=id=ContentPlaceHolder1_modeloComercialRepeater_modeloComercialRadioButton_0
...     RECEBER_ENDERECO_DE_ENTREGA=id=ContentPlaceHolder1_modeloComercialRepeater_rbtReceberEnderecoEntrega_0
...     MODELO_COMERCIAL_OK=id=ContentPlaceHolder1_okModeloComercialBotao_btn
...     MARKETING_OK=id=ContentPlaceHolder1_okCicloCompostoBotao_btn
...     CODIGO_PRODUTO=id=ContentPlaceHolder1_codigoProdutoCampoEntradaTexto_T2
...     BTN_AVANCAR=id=ContentPlaceHolder1_verificarPromocoesBotao_btn
...     BTN_PROMOCAO_AVANCAR=id=ContentPlaceHolder1_abasOpcaoEntregaTabContainer_promocoesConquistadasTabPanel_verificarItensIncorporadosBotaoImagem_btn
#...     PAGAMENTO_DINHEIRO=xpath://*[@id="ContentPlaceHolder1_PainelPlanoPagamento_planosPagamentoGrid"]/tbody/tr[16]/td[1]/input
...     PAGAMENTO_DINHEIRO=xpath://*[@id="ContentPlaceHolder1_PainelPlanoPagamento_planosPagamentoGrid"]/tbody/tr[8]/td[1]/input
...     CONFIRMA_PAGAMENTO=id=ContentPlaceHolder1_avancarButton_btn
...     BTN_AVANCAR_FINAL=id=ContentPlaceHolder1_avancarButton_btn
...     BTN_CONFIRMAR_PEDIDO=id=okConfirmButton