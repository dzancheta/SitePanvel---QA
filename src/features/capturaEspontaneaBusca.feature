#language: pt 
Funcionalidade: Captura receita - Captura espontânea de receita
  
    Como desenvolvedor
    Eu quero testar coletar uma receita na cesta, com o preenchimento das informações necessárias.

Contexto:
        Dado   Eu faço login padrão
        
        Então  Eu espero que a URL seja "/cesta"
        E      Eu preencho "paracetamol" no inputfield "#inputBuscarItem"
        E      Eu pressiono "Enter"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#capturarReceitaBusca" 
        E      Eu pauso por 1000ms
     

Esquema do Cenario: Validar com sucesso captura busca quando for preenchido corretamente os campos necessários. 
        
        Dado   Eu preencho <REGISTRO> no inputfield "#capturarModalRegistroMedico" 
        E      Eu pauso por 200ms
        E      Eu clico no botao "#capturarModalBuscaMedico"
        E      Eu pauso por 1000ms
        E      Eu clico no elemento "#capturarModalIncluirReceita > span"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "#botaoAdicionarItem > span" contenha "Adicionar a cesta "
      
        Então  Eu saio do sistema 

         Exemplos:
        |   REGISTRO    |       
        |    "21534"    |


Esquema do Cenario: Validar com sucesso captura via busca avançada medico quando for preenchido corretamente os campos necessários. 
        
        Dado   Eu clico no botao "#buscaAvancadaMedicoCaptura"
        E      Eu pauso por 1000ms
        E      Eu preencho <NOME> no inputfield "#medico-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div.pesquisar-medico.ng-scope > form > div > div.col-md-6 > div > #inputNome" 
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoBuscar"
        E      Eu pauso por 1000ms
        E      Eu clico no elemento "#medico-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > div.lista-medico.ng-scope > table > tbody > tr:nth-child(1)"
        E      Eu pauso por 1000ms
        E      Eu clico no elemento "#capturarModalIncluirReceita > span"
        E      Eu pauso por 200ms
      
        Então  Eu saio do sistema 

        Exemplos:
        |    NOME    |       
        |  "daniel"  |


Cenário: Validar sem sucesso captura espontânea de receita na busca quando não for preenchido campos necessários.

        Dado   Eu clico no botao "#capturarModalBuscaMedico"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "#mensagemErroCaptura > div" contenha "Não foi encontrado nenhum profissional!"
        E      Eu pauso por 200ms
        E      Eu clico no elemento "#mensagemErroCaptura > button"
        E      Eu clico no elemento "#fecharModalCapturaReceita"
        
        Então  Eu saio do sistema 



Esquema do Cenario: Validar sem sucesso captura espontânea de receita na busca quando for preenchido incorretamente o campo “Registro”. 

        Dado   Eu preencho <REGISTRO> no inputfield "#capturarModalRegistroMedico" 
        E      Eu pauso por 200ms
        E      Eu clico no botao "#capturarModalBuscaMedico"
        E      Eu pauso por 500ms
        E      Eu espero que o elemento "#mensagemErroCaptura > div" contenha "Não foi encontrado nenhum profissional!"
        E      Eu clico no elemento "#mensagemErroCaptura > button"
        E      Eu pauso por 200ms
        E      Eu clico no elemento "#fecharModalCapturaReceita"

        Então  Eu saio do sistema 

         Exemplos:
        |     REGISTRO     |       
        |    "21534454"    |