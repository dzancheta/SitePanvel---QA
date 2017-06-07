#language: pt 
Funcionalidade: Captura receita - Captura espontânea de receita
  
    Como desenvolvedor
    Eu quero testar coletar uma receita na cesta, com o preenchimento das informações necessárias.

Contexto:
        Dado   Eu faço login padrão
        
        Então  Eu espero que a URL seja "/cesta"
        E      Eu preencho "410540" no inputfield "#inputBuscarItem"
        E      Eu pressiono "Enter"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#espacoClassificacaoProduto > i"
        E      Eu pauso por 300ms


Esquema do Cenario: Validar com sucesso busca avançada medico quando for preenchido corretamente os campos necessários. 
        
        Dado   Eu preencho <REGISTRO> no inputfield "#capturar-receita-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div > div.informacoes-medicamento.ng-scope > form > div:nth-child(1) > div.col-md-6 > div > input   " 
        E      Eu pauso por 200ms
        E      Eu clico no botao "#capturar-receita-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div > div.informacoes-medicamento.ng-scope > form > div:nth-child(1) > div.col-md-6 > div > span > button"
        E      Eu pauso por 2000ms
        E      Eu clico no elemento "#capturar-receita-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div > div.informacoes-medicamento.ng-scope > button > span"
        E      Eu pauso por 500ms
      
        Então  Eu saio do sistema 

         Exemplos:
        |   REGISTRO    |       
        |    "21534"    |



Esquema do Cenario: Validar com sucesso busca avançada medico quando for preenchido corretamente os campos necessários. 
        
        Dado   Eu clico no botao "#capturar-receita-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div > div.informacoes-medicamento.ng-scope > a.busca-avancada-medico"
        E      Eu pauso por 500ms
        E      Eu preencho <NOME> no inputfield "#medico-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div.pesquisar-medico.ng-scope > form > div > div.col-md-6 > div > #inputNome" 
        E      Eu pauso por 500ms
        E      Eu clico no botao "#botaoBuscar"
        E      Eu pauso por 500ms
        E      Eu clico no elemento "#medico-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div.lista-medico.ng-scope > table > tbody > tr:nth-child(1)"
        E      Eu pauso por 500ms
        E      Eu clico no elemento "#capturarModalIncluirReceita > span"
        E      Eu pauso por 200ms
      
        Então  Eu saio do sistema 

        Exemplos:
        |    NOME    |       
        |  "daniel"  |


Cenário: Validar sem sucesso captura espontânea de receita quando não for preenchido campos necessários.

        Dado   Eu clico no botao "#capturar-receita-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div > div.informacoes-medicamento.ng-scope > form > div:nth-child(1) > div.col-md-6 > div > span > button"
        E      Eu pauso por 2000ms
        E      Eu espero que o elemento "#capturar-receita-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div.ng-scope.ng-isolate-scope.alert.alert-dismissible.alert-danger-modal > div" contenha "Não foi encontrado nenhum profissional!"
        E      Eu pauso por 200ms
        E      Eu clico no elemento "#capturar-receita-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div.ng-scope.ng-isolate-scope.alert.alert-dismissible.alert-danger-modal > button > span:nth-child(1)"
        E      Eu clico no elemento "#fecharModalCapturaReceita"
        
        Então  Eu saio do sistema 



Esquema do Cenario: Validar sem sucesso captura espontânea de receita quando for preenchido incorretamente o campo “Registro”. 

        Dado   Eu preencho <REGISTRO> no inputfield "#capturar-receita-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div > div.informacoes-medicamento.ng-scope > form > div:nth-child(1) > div.col-md-6 > div > input   " 
        E      Eu pauso por 200ms
        E      Eu clico no botao "#capturar-receita-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div > div.informacoes-medicamento.ng-scope > form > div:nth-child(1) > div.col-md-6 > div > span > button"
        E      Eu pauso por 500ms
        E      Eu espero que o elemento "#capturar-receita-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div.ng-scope.ng-isolate-scope.alert.alert-dismissible.alert-danger-modal > div" contenha "Não foi encontrado nenhum profissional!"
        E      Eu clico no elemento "#capturar-receita-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div.ng-scope.ng-isolate-scope.alert.alert-dismissible.alert-danger-modal > button > span:nth-child(1)"
        E      Eu pauso por 200ms
        E      Eu clico no elemento "#fecharModalCapturaReceita"

        Então  Eu saio do sistema 

         Exemplos:
        |     REGISTRO     |       
        |    "21534454"    |