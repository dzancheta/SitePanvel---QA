#language: pt 
Funcionalidade: Cadastro médico

    Como desenvolvedor
    Eu quero testar poder cadastrar um médico novo.


Contexto:
        Dado   Eu faço login padrão
        
        Então  Eu espero que a URL seja "/cesta"
      
        

Esquema do Cenario: Validar com sucesso cadastro medico quando for preenchido corretamente os campos necessários.  

        E      Eu preencho "paracetamol" no inputfield "#inputBuscarItem"
        E      Eu pressiono "Enter"
        E      Eu pauso por 600ms
        E      Eu clico no botao "#capturarReceitaBusca"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#cadastrarMedicoCaptura"
        E      Eu pauso por 1000ms
        E      Eu preencho <RIGISTRO> no inputfield "#inputRegistro"
        E      Eu pauso por 1000ms
        Quando Eu preencho <NOME> no inputfield "#cadastrar-medico-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > form > div > div > div:nth-child(1) > #inputNome"
        E      Eu clico no botao "#fecharModalCadastroMedico"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#fecharModalCapturaReceita"

        Então  Eu saio do sistema 


        Exemplos:
        |            RIGISTRO             |   NOME    |
        |             "696969"            |  "DANIEL" |



Esquema do Cenario: Validar sem sucesso cadastro medico quando o nome do médico não for preenchido.   

        Dado      Eu preencho "paracetamol" no inputfield "#inputBuscarItem"
        E      Eu pressiono "Enter"
        E      Eu pauso por 600ms
        E      Eu clico no botao "#capturarReceitaBusca"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#cadastrarMedicoCaptura"
        E      Eu pauso por 1000ms
        E      Eu preencho <RIGISTRO> no inputfield "#inputRegistro"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#adicionarNovoMedico"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#fecharModalCadastroMedico"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#fecharModalCapturaReceita"

        Então  Eu saio do sistema 


        Exemplos:
        |            RIGISTRO             |   
        |             "696969"            |  



Esquema do Cenario: Validar sem sucesso cadastro medico quando o registro do médico não for preenchido.    

        Dado      Eu preencho "paracetamol" no inputfield "#inputBuscarItem"
        E      Eu pressiono "Enter"
        E      Eu pauso por 600ms
        E      Eu clico no botao "#capturarReceitaBusca"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#cadastrarMedicoCaptura"
        E      Eu pauso por 1000ms
        Quando Eu preencho <NOME> no inputfield "#cadastrar-medico-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > form > div > div > div:nth-child(1) > #inputNome"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#adicionarNovoMedico"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#fecharModalCadastroMedico"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#fecharModalCapturaReceita"

        Então  Eu saio do sistema 


        Exemplos:
        |            NOME            |   
        |      "daniel zancheta"     |         

    

Esquema do Cenario: Validar com sucesso acesso a modal cadastro medico quando for acessado pelo modal “Busca Avançada”.    

        Dado      Eu preencho "paracetamol" no inputfield "#inputBuscarItem"
        E      Eu pressiono "Enter"
        E      Eu pauso por 600ms
        E      Eu clico no botao "#capturarReceitaBusca"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#buscaAvancadaMedicoCaptura"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#linkCadastrarMedico"
        E      Eu pauso por 1000ms
        Quando Eu preencho <NOME> no inputfield "#cadastrar-medico-modal > div > div > ng-transclude > div > modal-body > div > ng-transclude > form > div > div > div:nth-child(1) > #inputNome"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#adicionarNovoMedico"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#fecharModalCadastroMedico"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#fecharModalCapturaReceita"

        Então  Eu saio do sistema 


        Exemplos:
        |            NOME            |   
        |      "daniel zancheta"     |         




Cenário: Validar com sucesso acesso a modal cadastro medico quando for acessado pelo modal “Coletar receita médica”.

        Dado   Eu preencho "99678" no inputfield "#inputBuscarItem" 
        E      Eu pressiono "Enter"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoColetarReceita"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#cadastrarMedicoColeta"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#fecharModalCadastroMedico"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "#fecharModalColetaReceita" se torne visível
        E      Eu clico no elemento "#fecharModalColetaReceita"
        E      Eu pauso por 1000ms
        
        

        Então  Eu saio do sistema 




Cenário: Validar com sucesso acesso a modal cadastro medico quando for acessado pelo busca avançada na modal “Coletar receita médica”.

        Dado   Eu preencho "99678" no inputfield "#inputBuscarItem" 
        E      Eu pressiono "Enter"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#botaoColetarReceita"
        E      Eu pauso por 1000ms  
        E      Eu clico no elemento "#buscaAvancadaMedicoColeta"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#linkCadastrarMedico"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#fecharModalCadastroMedico"
        E      Eu pauso por 1000ms
        E      Eu clico no botao "#fecharModalPesquisaMedico"
        E      Eu pauso por 1000ms
        E      Eu espero que o elemento "#fecharModalColetaReceita" se torne visível
        E      Eu clico no elemento "#fecharModalColetaReceita"
        E      Eu pauso por 1000ms
        
        

        Então  Eu saio do sistema 