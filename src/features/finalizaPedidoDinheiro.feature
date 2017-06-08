#language: pt 
Funcionalidade: Finaliza pedido

    Como desenvolvedor
    Eu quero testar poder finalizar um pedido novo.


Contexto:
        Dado   Eu faço login padrão
        
        Então  Eu espero que a URL seja "/cesta"
      
        

Esquema do Cenario: Validar com sucesso finalizar pedido quando for preenchido corretamente os campos necessários.  

        E      Eu preencho <ITEM> no inputfield "#inputBuscarItem"
        E      Eu pressiono "Enter"
        E      Eu pauso por 400ms
        E      Eu clico no botao "#botaoFormasPagamento"
        E      Eu pauso por 400ms
        E      Eu clico no elemento "#formasPagamento-caixa"  
        E      Eu pauso por 400ms
        E      Eu preencho <NOME> no inputfield "#formasPagamentoCliente"
        E      Eu clico no botao "#botaoFinalizarPedido > span:nth-child(1)"
        E      Eu pauso por 400ms
        E      Eu espero que o elemento "body > div > div > div > main > ng-include:nth-child(3) > main > section > div.mensagem-container > div > p.texto-destacado" contenha "Pedido realizado com sucesso!"
        E      Eu pauso por 400ms
        E      Eu clico no elemento "#botaoNovoPedido > span"

        Então  Eu saio do sistema 


        Exemplos:
        |        ITEM        |     NOME     |
        |    "410540"        |   "DANIEL"   |
        |    "410540"        |   "DANIEL"   |
         

         
Esquema do Cenario: Validar com sucesso Pedido em Dinheiro quando cliente for identificado e preenchido corretamente os campos necessários. 

        E      Eu preencho <ITEM> no inputfield "#inputBuscarItem"
        E      Eu pressiono "Enter"
        E      Eu pauso por 400ms
        E      Eu clico no botao "#inputCpf"
        E      Eu preencho <CPF> no inputfield "#formIdentificacao > #inputCpf"
        E      Eu pauso por 400ms
        E      Eu clico no botao "#botaoFormasPagamento"
        E      Eu pauso por 400ms

        E      Eu clico no elemento "#formasPagamento-caixa"
        E      Eu pauso por 400ms
        E      Eu preencho <NOME> no inputfield "#formasPagamentoCliente"
        E      Eu clico no botao "#botaoFinalizarPedido > span:nth-child(1)"
        E      Eu pauso por 400ms
        E      Eu espero que o elemento "body > div > div > div > main > ng-include:nth-child(3) > main > section > div.mensagem-container > div > p.texto-destacado" contenha "Pedido realizado com sucesso!"
        E      Eu pauso por 1000ms
        E      Eu clico no elemento "#botaoNovoPedido > span"

        Então  Eu saio do sistema 


        Exemplos:
        |        ITEM        |     NOME     |      CPF        |
        |    "410540"        |   "DANIEL"   |   "03186919061" |
        
@Pending         
Esquema do Cenario: Validar com sucesso finalizar pedido quando for preenchido corretamente os campos necessários.  

        E      Eu preencho <ITEM> no inputfield "#inputBuscarItem"
        E      Eu pressiono "Enter"
        E      Eu pauso por 400ms
        E      Eu clico no botao "#botaoAdicionarItem > span"
        E      Eu pauso por 400ms

        E      Eu clico no botao "#botaoFormasPagamento"
        E      Eu pauso por 400ms
        E      Eu preencho <NOME> no inputfield "#formasPagamentoCliente"
        E      Eu clico no botao "#botaoFinalizarPedido > span:nth-child(1)"
        E      Eu pauso por 400ms
        E      Eu espero que o elemento "body > div > div > div > main > main > section > form > div.ng-scope.ng-isolate-scope.alert.alert-dismissible.alert-danger > div" contenha "Para finalizar o pedido o saldo restante deve estar zerado."
        E      Eu clico no elemento "#formasPagamento-caixa"
        E      Eu pauso por 400ms
        E      Eu clico no elemento "body > div > div > div > main > main > section > form > div.voltar > a > span"

        Então  Eu saio do sistema 


        Exemplos:
        |        ITEM        |     NOME     |
        |    "410540"        |   "DANIEL"   |