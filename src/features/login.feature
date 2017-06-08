#language: pt 

Funcionalidade: Login - Valor Campos
    Como desenvolvedor
    Eu quero testar as iterações possiveis entre usuário e ferramenta na funcionalidade Login.

    Contexto:
        Dado  Eu abro o site "/login"
        E     Eu tenho um fullscreen
        E     Eu pauso por 2000ms

    
    Esquema do Cenario: Login com sucesso quando o campo usuário e o campo senha forem preenchidos com dados válidos e a filial for preenchida automaticamente
		
        Dado  Eu preencho <usuario> no inputfield "#inputUsuario"
        E     Eu pauso por 400ms
        Então Eu preencho <senha> no inputfield "#inputSenha" e submeto
        E     Eu pauso por 400ms
        Então Eu espero que a URL seja "/cesta"
        E     Eu pauso por 400ms

        Então Eu saio do sistema

    Exemplos:
            |  usuario  |    senha   |
            |  "jairoc" | "dinda2017" |

    Esquema do Cenario: Login com sucesso quando o campo usuário e o campo senha forem preenchidos com dados válidos preenchendo a filial
		
        Dado  Eu preencho <usuario> no inputfield "#inputUsuario"
        E     Eu pauso por 400ms
        Então Eu preencho <senha> no inputfield "#inputSenha"
        E     Eu preencho <filial> no inputfield "#loginFilial" e submeto
        E     Eu pauso por 400ms
        Então Eu espero que a URL seja "/cesta"
        E     Eu pauso por 400ms

        Então Eu saio do sistema

    Exemplos:
            |  usuario  | senha          |   filial  |
            |  "igor"   | "ABRIL201701" |    "30"   |

    
    Cenário: Login sem sucesso quando os campos 'usuário' e 'senha' não forem preenchidos
		
        Dado  Eu clico no botao "#botaoEntrar"
        E     Eu pauso por 400ms
        Então Eu espero que a URL não seja "/cesta"

    Cenário: Login sem sucesso quando o campo 'usuário' for preenchido e 'senha' não for preenchido

        Dado  Eu preencho "jairoc" no inputfield "#inputUsuario"
        E     Eu pauso por 400ms
        E     Eu clico no botao "#botaoEntrar"
        E     Eu pauso por 400ms
        Então Eu espero que a URL não seja "/cesta"
    

    Cenário:  Login sem sucesso quando o campo usuário não for preenchido e senha for preenchida
		
        Dado  Eu preencho "testes123" no inputfield "#inputSenha"
        Então Eu clico no botao "#botaoEntrar"
        E     Eu pauso por 400ms
        Então Eu espero que a URL não seja "/cesta"
    

   Cenário:  Login sem sucesso quando o campo usuário for inválido e o campo senha for preenchidos com dados válidos

        Dado   Eu preencho "Usurio" no inputfield "#inputUsuario"
        E      Eu pressiono "Tab"
        E      Eu pauso por 400ms
        E      Eu espero que o elemento "#mensagemAlerta" contenha "Nenhuma filial"
        Quando Eu preencho "teste123" no inputfield "#inputSenha" e submeto
        E      Eu pauso por 400ms
        Então  Eu espero que o elemento "#mensagemAlerta" contenha "É preciso entrar com um usuário com filial válida!"


     Cenário: Preenchimento automático do campo filial ao preencher o usuário
		
        Dado   Eu preencho "jairoc" no inputfield "#inputUsuario"
        Quando Eu pressiono "Tab"
        E      Eu pauso por 500ms
        Então  Eu espero que o inputfield "#loginFilial" contenha "31"
    
    
    Cenário: Login sem sucesso quando o campo usuário for válido e o campo senha for preenchidos com dados inválidos
		
        Dado   Eu preencho "jairoc" no inputfield "#inputUsuario"
        E      Eu preencho "testes1234" no inputfield "#inputSenha"
        E      Eu pauso por 500ms
        Quando Eu clico no botao "#botaoEntrar"
        E      Eu pauso por 500ms
        Então  Eu espero que o elemento "#mensagemAlerta" contenha "inválido"
    

    Cenário: Login sem sucesso quando o campo usuário tiver mais que 30 caracteres
		Dado   Eu preencho "Lorem ipsum dolor sit amet, consectetur" no inputfield "#inputUsuario" até "60" caracteres
        E      Eu preencho "testes123" no inputfield "#inputSenha"
        E      Eu pauso por 500ms
        Quando Eu clico no botao "#botaoEntrar"
        E      Eu pauso por 500ms
        Então  Eu espero que a URL seja "/login"


    Cenário: Login sem sucesso quando o campo senha tiver mais que 30 caracteres
		
        Dado   Eu preencho "jairoc" no inputfield "#inputUsuario"
        E      Eu preencho "Sed ut perspiciatis unde omnis iste" no inputfield "#inputSenha" até "60" caracteres
        E      Eu pauso por 500ms
        Quando Eu clico no botao "#botaoEntrar"
        E      Eu pauso por 400ms
        Então  Eu espero que a URL seja "/login"
        E      Eu pauso por 400ms
