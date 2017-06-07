#language: pt 
Funcionalidade: Finaliza pedido

    Como desenvolvedor
    Eu quero testar poder finalizar um pedido novo.


Contexto:
        Dado   Eu faço login padrão
        
        Então  Eu espero que a URL seja "/cesta"
      
      
Esquema do Cenario: Validar com sucesso Pedido Pip em Dinheiro quando cliente for identificado e preenchido corretamente os campos necessários. 

        E      Eu preencho <ITEM> no inputfield "#inputBuscarItem"
        E      Eu pressiono "Enter"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#inputCpf"
        E      Eu preencho <CPF> no inputfield "#formIdentificacao > #inputCpf"
        E      Eu pressiono "Enter"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoFormasEntrega"
        E      Eu pauso por 1000ms
        E      Eu clico no elemento "#entregaEmCasa > span"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoConfirmar"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoIncrementa > i"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoFormasPagamento"
        E      Eu preencho <NOME> no inputfield "#formasPagamentoCliente"
        E      Eu pauso por 1000ms
        E      Eu clico no elemento "#formasPagamento-caixa"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoFinalizarPedido > span:nth-child(1)"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "body > div > div > div > main > ng-include:nth-child(3) > main > section > div.mensagem-container > div > p.texto-destacado" contenha "Pedido realizado com sucesso!"
        E      Eu pauso por 400ms
        E      Eu clico no elemento "#botaoNovoPedido > span"

        Então  Eu saio do sistema 


        Exemplos:
        |        ITEM        |     NOME     |      CPF        |
        |    "410540"        |   "DANIEL"   |   "72990996087" |
        



Esquema do Cenario: Validar com sucesso Pedido Pip em Dinheiro quando cliente for identificado e preenchido corretamente os campos necessários. 

        E      Eu preencho <ITEM> no inputfield "#inputBuscarItem"
        E      Eu pressiono "Enter"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#inputCpf"
        E      Eu preencho <CPF> no inputfield "#formIdentificacao > #inputCpf"
        E      Eu pressiono "Enter"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoFormasEntrega"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#radioEntregaEmCasa > div > div.check-container > label > div"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#radioRapida > div > div.check-container > label > div"
        E      Eu pauso por 500ms
        E      Eu clico no botao "#botaoConfirmar"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoIncrementa > i"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoFormasPagamento"
        E      Eu preencho <NOME> no inputfield "#formasPagamentoCliente"
        E      Eu pauso por 1000ms
        E      Eu clico no elemento "#formasPagamento-caixa" 
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoFinalizarPedido > span:nth-child(1)"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "body > div > div > div > main > ng-include:nth-child(3) > main > section > div.mensagem-container > div > p.texto-destacado" contenha "Pedido realizado com sucesso!"
        E      Eu pauso por 1000ms
        E      Eu clico no elemento "#botaoNovoPedido > span"

        Então  Eu saio do sistema 


        Exemplos:
        |        ITEM        |     NOME     |      CPF        |
        |    "410540"        |   "DANIEL"   |   "72990996087" |
                



Esquema do Cenario: Validar sem sucesso Pedido Pip em Dinheiro quando cliente for identificado e preenchido corretamente os campos necessários. 

        E      Eu preencho <ITEM> no inputfield "#inputBuscarItem"
        E      Eu pressiono "Enter"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#inputCpf"
        E      Eu preencho <CPF> no inputfield "#formIdentificacao > #inputCpf"
        E      Eu pressiono "Enter"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoFormasEntrega"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#radioEntregaEmCasa > div > div.check-container > label > div"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#radioRapida > div > div.check-container > label > div"
        E      Eu pauso por 500ms
        E      Eu clico no botao "#botaoConfirmar"
        E      Eu pauso por 1000ms
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoFormasPagamento"
        E      Eu espero que o elemento "#mensagemErro > div" contenha "Informe as quantidades há entregar se for entrega em casa."
        E      Eu pauso por 1000ms
        E      Eu clico no elemento "#botaoVoltar > span"

        Então  Eu saio do sistema 


        Exemplos:
        |        ITEM        |     NOME     |      CPF        |
        |    "410540"        |   "DANIEL"   |   "72990996087" |
                                



Esquema do Cenario: Validar com sucesso Pedido Pip em Dinheiro quando cliente for identificado e preenchido corretamente os campos necessários. 

        E      Eu preencho <ITEM> no inputfield "#inputBuscarItem"
        E      Eu pressiono "Enter"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#inputCpf"
        E      Eu preencho <CPF> no inputfield "#formIdentificacao > #inputCpf"
        E      Eu pressiono "Enter"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoFormasEntrega"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#radioEntregaEmCasa > div > div.check-container > label > div"
        E      Eu pauso por 1000ms
        E      Eu clico no elemento "#radioRapida > div > div.check-container > label > div"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoConfirmar"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoIncrementa > i"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoFormasPagamento"
        E      Eu preencho <NOME> no inputfield "#formasPagamentoCliente"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoFinalizarPedido > span:nth-child(1)"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "body > div > div > div > main > main > section > form > div.ng-scope.ng-isolate-scope.alert.alert-dismissible.alert-danger > div" contenha "Para finalizar o pedido o saldo restante deve estar zerado."
        E      Eu pauso por 1000ms
        E      Eu clico no elemento "body > div > div > div > main > main > section > form > div.voltar > a > span"
        E      Eu clico no botao "#botaoVoltar > span"

        Então  Eu saio do sistema 


        Exemplos:
        |        ITEM        |     NOME     |      CPF        |
        |    "410540"        |   "DANIEL"   |   "72990996087" |                                


Esquema do Cenario: Validar com sucesso Pedido Pip em Dinheiro quando cliente for identificado e preenchido corretamente os campos necessários. 

        E      Eu preencho <ITEM> no inputfield "#inputBuscarItem"
        E      Eu pressiono "Enter"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#inputCpf"
        E      Eu preencho <CPF> no inputfield "#formIdentificacao > #inputCpf"
        E      Eu pressiono "Enter"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoFormasEntrega"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#radioEntregaEmCasa > div > div.check-container > label > div"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "#modalEntregas > modal-body > div > ng-transclude > div > div.entrega > div.selecao > ul > li:nth-child(2) > div:nth-child(2) > div > span:nth-child(3) > span" contenha "R$0,00"
        E      Eu clico no botao "#botaoConfirmar"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoIncrementa > i"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoFormasPagamento"
        E      Eu preencho <NOME> no inputfield "#formasPagamentoCliente"
        E      Eu pauso por 1000ms
        E      Eu clico no elemento "#formasPagamento-caixa"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoFinalizarPedido > span:nth-child(1)"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "body > div > div > div > main > ng-include:nth-child(3) > main > section > div.mensagem-container > div > p.texto-destacado" contenha "Pedido realizado com sucesso!"
        E      Eu pauso por 1000ms
        E      Eu clico no elemento "#botaoNovoPedido > span"

        Então  Eu saio do sistema 


        Exemplos:
        |        ITEM        |     NOME     |      CPF        |
        |    "371041"        |   "DANIEL"   |   "72990996087" |        


Esquema do Cenario: Validar com sucesso Pedido Pip em Dinheiro quando cliente for identificado e preenchido corretamente os campos necessários. 

        E      Eu preencho <ITEM> no inputfield "#inputBuscarItem"
        E      Eu pressiono "Enter"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#inputCpf"
        E      Eu preencho <CPF> no inputfield "#formIdentificacao > #inputCpf"
        E      Eu pressiono "Enter"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoFormasEntrega"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#radioEntregaEmCasa > div > div.check-container > label > div"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "#modalEntregas > modal-body > div > ng-transclude > div > div.entrega > div.selecao > ul > li:nth-child(2) > div:nth-child(2) > div > span:nth-child(3) > span" contenha "R$9,90"
        E      Eu clico no botao "#botaoConfirmar"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoIncrementa > i"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoFormasPagamento"
        E      Eu preencho <NOME> no inputfield "#formasPagamentoCliente"
        E      Eu pauso por 1000ms
        E      Eu clico no elemento "#formasPagamento-caixa"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoFinalizarPedido > span:nth-child(1)"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "body > div > div > div > main > ng-include:nth-child(3) > main > section > div.mensagem-container > div > p.texto-destacado" contenha "Pedido realizado com sucesso!"
        E      Eu pauso por 1000ms
        E      Eu clico no elemento "#botaoNovoPedido > span"

        Então  Eu saio do sistema 


        Exemplos:
        |        ITEM        |     NOME     |      CPF        |
        |    "410540"        |   "DANIEL"   |   "72990996087" |                                
