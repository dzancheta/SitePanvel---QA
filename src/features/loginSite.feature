#language: pt 

Funcionalidade: Login - Valor Campos
    Como desenvolvedor
    Eu quero testar as iterações possiveis entre usuário e ferramenta na funcionalidade Login.

       Contexto:
        Dado  Eu abro o site ".com"
        E     Eu tenho um fullscreen
        E     Eu pauso por 2000ms

    
    Esquema do Cenario: Login com sucesso quando o campo usuário e o campo senha forem preenchidos com dados válidos e a filial for preenchida automaticamente
		
        Dado  Eu clico no botao "#header > div.menu_user_topo > span.usuario > a:nth-child(1)"
        E     Eu preencho <usuario> no inputfield "#email"
        E     Eu pauso por 1000ms
        Então Eu preencho <senha> no inputfield "#senha" 
        E     Eu pauso por 1000ms
        E     Eu clico no elemento "#login_box > p.login_button > input[type='submit']"
        Então Eu espero que o elemento "#header > div.menu_user_topo > span.usuarioLogado" contenha "DANIEL"

    Exemplos:
            |            usuario              |    senha   |
            |  "daniel.simonetti@hotmail.com" | "parada300" |

  