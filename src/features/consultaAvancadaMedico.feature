#language: pt 
Funcionalidade: Coletar receita - Busca avançada médico
  
    Como desenvolvedor
    Eu quero testar poder consultar um cliente novo.

Contexto:
        Dado   Eu faço login padrão
        
        Então  Eu espero que a URL seja "/cesta"
        E      Eu preencho "rivotril" no inputfield "#inputBuscarItem"
        E      Eu pressiono "Enter"
        E      Eu pauso por 2000ms
        E      Eu clico no botao "#botaoAdicionarItem > span" 
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoColetarReceita"
        E      Eu pauso por 4000ms
     

Cenário: Validar a mensagem quando o campo “nome” não for preenchido. 
         
        Dado   Eu clico no elemento "#buscaAvancadaMedicoColeta"
        E      Eu pauso por 1000ms        
        E      Eu espero que o elemento "#buscaAvancadaMedicoColeta" se torne visível
        E      Eu espero que o elemento "#botaoBuscar" não esteja habilitado
        E      Eu clico no elemento "#fecharModalPesquisaMedico"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "#fecharModalColetaReceita" se torne visível
        E      Eu pauso por 1000ms
        E      Eu clico no elemento "#fecharModalColetaReceita"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "#botaoMostrarMenu" se torne visível

        Então  Eu saio do sistema 


Esquema do Cenario: Validar com sucesso busca avançada medico quando for preenchido corretamente os campos necessários. 
        
       
        Dado   Eu clico no elemento "#buscaAvancadaMedicoColeta"
        E      Eu espero que o elemento "#medico-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div.pesquisar-medico.ng-scope > form > div > div.col-md-6 > div > #inputNome" se torne visível
        E      Eu preencho <NOME> no inputfield "#medico-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div.pesquisar-medico.ng-scope > form > div > div.col-md-6 > div > #inputNome" 
        E      Eu espero que o elemento "#botaoBuscar" se torne visível
        E      Eu clico no botao "#botaoBuscar"
        E      Eu pauso por 300ms
        E      Eu espero que o elemento "#medico-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div.lista-medico.ng-scope > table > tbody > tr:nth-child(1) > td:nth-child(1)" se torne visível
        E      Eu clico no elemento "#fecharModalPesquisaMedico"
        E      Eu pauso por 300ms
        E      Eu espero que o elemento "#fecharModalColetaReceita" se torne visível
        E      Eu clico no elemento "#fecharModalColetaReceita"
        E      Eu pauso por 300ms
        E      Eu espero que o elemento "#botaoMostrarMenu" se torne visível

        Então  Eu saio do sistema 

         Exemplos:
        |   NOME   |  
        | "Rafael" |  
        | "Daniel" |  


Esquema do Cenario: Validar sem sucesso busca avançada medico quando "Nome" for preenchido com medico inexistente. 
        
        
        Dado   Eu clico no elemento "#buscaAvancadaMedicoColeta"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "#inputNome" se torne visível
        E      Eu clico no elemento "#inputNome"
        E      Eu pauso por 1000ms
        Então  Eu preencho <NOME> no inputfield "#medico-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div.pesquisar-medico.ng-scope > form > div > div.col-md-6 > div > #inputNome" 
        E      Eu espero que o elemento "#botaoBuscar" se torne visível
        E      Eu clico no botao "#botaoBuscar"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "#medico-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div.lista-medico.ng-scope > table > tbody > tr" se torne visível
        Então  Eu espero que o elemento "#medico-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div.lista-medico.ng-scope > table > tbody > tr" contenha "Não foi encontrado nenhum médico."
        E      Eu clico no elemento "#fecharModalPesquisaMedico"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "#fecharModalColetaReceita" se torne visível
        E      Eu clico no elemento "#fecharModalColetaReceita"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "#botaoMostrarMenu" se torne visível

        Então  Eu saio do sistema 

         Exemplos:
        |            NOME             |
        | "daniel simonetti zancheta" |



Esquema do Cenario: Validar sem sucesso busca avançada medico quando o campo “Nome” for preenchido com caracteres inválidos. 
        
        
        Dado   Eu clico no elemento "#buscaAvancadaMedicoColeta"
        E      Eu pauso por 1000ms
        Então  Eu espero que o elemento "#inputNome" se torne visível
        Então  Eu preencho <NOME> no inputfield "#medico-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div.pesquisar-medico.ng-scope > form > div > div.col-md-6 > div > #inputNome" 
        E      Eu espero que o elemento "#botaoBuscar" se torne visível
        E      Eu clico no botao "#botaoBuscar"
        E      Eu pauso por 10000ms
        E      Eu espero que o elemento "#medico-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div.lista-medico.ng-scope > table > tbody > tr" se torne visível
        Então  Eu espero que o elemento "#medico-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div.lista-medico.ng-scope > table > tbody > tr" contenha "Não foi encontrado nenhum médico."
        E      Eu clico no elemento "#fecharModalPesquisaMedico"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "#fecharModalColetaReceita" se torne visível
        E      Eu clico no elemento "#fecharModalColetaReceita"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "#botaoMostrarMenu" se torne visível

        Então  Eu saio do sistema 

         Exemplos:
        |           NOME           |
        |      "@123#!$%*%¨@!"     |


@Pending
Esquema do Cenario: Validar com sucesso busca medico quando registro for preenchido corretamente. 
        
        
        E      Eu pauso por 10000ms

        Dado   Eu preencho <REGISTRO> no inputfield "#receita-modal > div > div > ng-transclude > div > ng-include:nth-child(2) > div > modal-body > div > ng-transclude > div.informacoes-medicamento.ng-scope > form > div:nth-child(1) > div.col-md-6 > div > input" 
        E      Eu pressiono "Enter"
        E      Eu espero que o elemento "#receita-modal > div > div > ng-transclude > div > ng-include:nth-child(2) > div > modal-body > div > ng-transclude > div > div.informacoes-medicamento.ng-scope > form > div:nth-child(1) > div.col-md-6 > div > span" se torne visível
        E      Eu clico no botao "#receita-modal > div > div > ng-transclude > div > ng-include:nth-child(2) > div > modal-body > div > ng-transclude > div > div.informacoes-medicamento.ng-scope > form > div:nth-child(1) > div.col-md-6 > div > span"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "#inputNomeMedico" se torne visível
        E      Eu espero que o elemento "#fecharModalColetaReceita" se torne visível
        E      Eu clico no elemento "#fecharModalColetaReceita"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "#botaoMostrarMenu" se torne visível

        Então  Eu saio do sistema

         Exemplos:
        |    REGISTRO   |
        |    "696969"   |
        |     "896"     |



    
@Pending
Esquema do Cenario: Validar sem sucesso busca medico quando registro for preenchido incorretamente. 


        Dado   Eu preencho <REGISTRO> no inputfield "#capturarModalRegistroMedico"
        E      Eu espero que o elemento "#receita-modal > div > div > ng-transclude > div > ng-include:nth-child(2) > div > modal-body > div > ng-transclude > div > div.informacoes-medicamento.ng-scope > form > div:nth-child(1) > div.col-md-6 > div > span" se torne visível
        E      Eu clico no botao "#coletarModalBuscaMedico"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "#capturar-receita-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div.ng-scope.ng-isolate-scope.alert.alert-dismissible.alert-danger-modal" se torne visível
        E      Eu espero que o elemento "#fecharModalColetaReceita" se torne visível
        E      Eu clico no elemento "#fecharModalColetaReceita"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "#botaoMostrarMenu" se torne visível

        Então  Eu saio do sistema 

         Exemplos:
        |    REGISTRO     |         
        |   "696969468"   | 