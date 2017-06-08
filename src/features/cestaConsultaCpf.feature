#language: pt 

Funcionalidade: Cesta - Consulta por CPF
    Como desenvolvedor
    Eu quero testar as iterações possiveis entre usuário e a consulta de CPF.

    Contexto:

        Dado   Eu faço login padrão
        E      Eu pauso por 1000ms

        Então  Eu espero que a URL seja "/cesta"
        
    
    @Pending
    Cenario: Validar o campo CPF preenchido com mais de 11 caracteres
		
        E      Eu pauso por 1000ms
        Quando Eu clico no botao "#inputCpf"
        Quando Eu preencho "013284520261" no inputfield "#formIdentificacao > #inputCpf" e submeto
        E      Eu pauso por 500ms
        E      Eu espero que o elemento "#clienteErro" contenha "CPF inválido"
        Então  Eu saio do sistema

    @Pending   
    Cenário: Validar CPF quando o campo for preenchido com caracteres inválidos
        Dado   Eu preencho "olamundo!@#$%" no inputfield "#formIdentificacao > #inputCpf" e submeto
        E      Eu pauso por 500ms
        Então  Eu espero que o elemento "#clienteErro > div" contenha o texto "CPF inválido"
        Então  Eu saio do sistema

        
    Cenário: Validar CPF quando o campo é preenchido com um cpf válido, mas ainda não é cadastrado.
        Dado   Eu preencho "24652754370" no inputfield "#formIdentificacao > #inputCpf" e submeto
        E      Eu pauso por 200ms
        Então  Eu espero que o elemento "#clienteErro > div" contenha "Cliente não encontrado"
        E      Eu pauso por 1000ms
        Então  Eu saio do sistema


    Cenário: Validar CPF quando o campo é preenchido com um cpf inválido
        Dado   Eu preencho "02931288093" no inputfield "#formIdentificacao > #inputCpf" e submeto
        E      Eu pauso por 1000ms
        Então  Eu espero que o elemento "#clienteErro > div" contenha o texto "Cliente não encontrado"
        
        Então  Eu saio do sistema


    Cenário: Validar CPF quando o campo é preenchido com um cpf válido
        Dado   Eu preencho "01328452026" no inputfield "#formIdentificacao > #inputCpf" e submeto
        E      Eu pauso por 600ms
        Então  Eu espero que o elemento "#avatar" esteja visível

        Então  Eu saio do sistema


