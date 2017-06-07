#language: pt 

Funcionalidade: Cesta - Consulta por CPF
    Como desenvolvedor
    Eu quero testar as iterações possiveis entre usuário e a consulta de CPF.

    Contexto:

        Dado   Eu faço login padrão

        Então  Eu espero que a URL seja "/cesta"
    
    @Pending
    Cenario: Validar o campo CPF preenchido com mais de 11 caracteres
		
        E      Eu pauso por 1000ms
        Quando Eu clico no botao "#inputCpf"
        Quando Eu preencho "013284520261" no inputfield "#formIdentificacao > #inputCpf" e submeto
        E      Eu pauso por 500ms
        E      Eu espero que o elemento "#clienteErro" contenha "CPF inválido"
        Então  Eu saio do sistema
        E      Eu pauso por 2000ms

    @Pending   
    Cenário: Validar CPF quando o campo for preenchido com caracteres inválidos
        E      Eu pauso por 1000ms
        Dado   Eu preencho "olamundo!@#$%" no inputfield "#formIdentificacao > #inputCpf" e submeto
        E      Eu pauso por 500ms
        Então  Eu espero que o elemento "#clienteErro > div" contenha o texto "CPF inválido"
        Então  Eu saio do sistema

        
    Cenário: Validar CPF quando o campo é preenchido com um cpf válido, mas ainda não é cadastrado.
        E      Eu pauso por 1000ms
        Dado   Eu preencho "24652754370" no inputfield "#formIdentificacao > #inputCpf" e submeto
        E      Eu pauso por 2000ms
        Então  Eu espero que o elemento "#clienteErro > div" contenha "Cliente não encontrado"
        E      Eu pauso por 8000ms
        Então  Eu saio do sistema


    Cenário: Validar CPF quando o campo é preenchido com um cpf inválido
        E      Eu pauso por 1000ms
        Dado   Eu preencho "02931288093" no inputfield "#formIdentificacao > #inputCpf" e submeto
        E      Eu pauso por 2000ms
        Então  Eu espero que o elemento "#clienteErro > div" contenha o texto "Cliente não encontrado"
        
        Então  Eu saio do sistema


    Cenário: Validar CPF quando o campo é preenchido com um cpf válido
        E      Eu pauso por 1000ms
        Dado   Eu preencho "01328452026" no inputfield "#formIdentificacao > #inputCpf" e submeto
        E      Eu pauso por 4000ms
        Então  Eu espero que o elemento "#botaoRemoverCliente" esteja visível

        Então  Eu saio do sistema


