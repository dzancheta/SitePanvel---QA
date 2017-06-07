#language: pt 

Funcionalidade: Cesta - Iteração com itens

    Como desenvolvedor
    Eu quero testar as iterações possiveis entre usuário e Adição/Remoção de itens à cesta.

    Contexto:
        Dado   Eu faço login padrão

        Então  Eu espero que a URL seja "/cesta"
    
    
    Cenário:  Validar com sucesso adição de um item à cesta e encerramento da busca
        Dado   Eu preencho "ESM RISQUE CINT PLATINO BL" no inputfield "#inputBuscarItem" e submeto
        E      Eu pauso por 1000ms
        Quando Eu clico no botao "#botaoAdicionarItem"
        E      Eu pauso por 1000ms
        Então  Eu espero que o elemento "#espacoDescricaoProduto > nome-produto > span" contenha "106917 - ESM RISQUE CINT PLATINO BL"

        Então  Eu saio do sistema


    @pending
    Cenário: Validar com sucesso adição de um item fora de estoque à cesta e encerramento da busca
        Dado   Eu preencho "ESM RISQUE CINT PLATINO BL" no inputfield "#inputBuscarItem" e submeto
        E      Eu pauso por 1000ms
        Quando Eu clico no botao "#botaoAdicionarItem"
        Então  Eu espero que o elemento "#linhaProduto > div.info > div" contenha o texto "Sem estoque"
        E      Eu pauso por 1000ms
        #E   O css atributo "color" do elemento "#espacoDescricaoProduto > nome-produto > span" is "rgba(237,0,18,1)"
        Então  Eu saio do sistema

    Cenário: Validar com sucesso Adição de um item fora de estoque à cesta e encerramento da busca verificando nome
        Dado   Eu preencho "ESM RISQUE CINT PLATINO BL" no inputfield "#inputBuscarItem" e submeto
        E      Eu pauso por 1000ms
        Quando Eu clico no botao "#botaoAdicionarItem"
        Então  Eu espero que o elemento "#espacoDescricaoProduto" contenha "ESM RISQUE CINT PLATINO BL"
        
        Então  Eu saio do sistema

    Cenário: Validar com sucesso adição de um item fora de estoque à cesta, encerramento da busca e adição de mais quantidades(3) do mesmo item.
        Dado   Eu preencho "ESM RISQUE CINT PLATINO BL" no inputfield "#inputBuscarItem" e submeto
        E      Eu pauso por 1000ms
        Quando Eu clico no botao "#botaoAdicionarItem"
                E      Eu pauso por 1000ms

        E      Eu clico no botão "#botaoIncrementar" "3" vezes
        Então  Eu espero que o inputfield "#inputQuantidade" contenha o texto "4"

        Então  Eu saio do sistema


    Cenário:Validar com sucesso adição de um item fora de estoque à cesta, encerramento da busca e adição e subtração da quantidade do mesmo item
        Dado   Eu preencho "ESM RISQUE CINT PLATINO BL" no inputfield "#inputBuscarItem" e submeto
        E      Eu pauso por 1000ms
        Quando Eu clico no botao "#botaoAdicionarItem"
        E      Eu pauso por 1000ms
        E      Eu clico no botão "#botaoIncrementar" "3" vezes
        Então  Eu espero que o inputfield "#inputQuantidade" contenha o texto "4"
        E      Eu pauso por 600ms
        Quando Eu clico no botão "#botaoDecrementar" "2" vezes
        Então  Eu espero que o inputfield "#inputQuantidade" contenha o texto "2"

        Então  Eu saio do sistema
        
        
    Cenário:  Validar com sucesso adição de um item em estoque à cesta, verificando se há desconto pelo fidelidade
        Dado   Eu preencho "393843" no inputfield "#inputBuscarItem" e submeto
        Então  Eu espero que o elemento "#descontoProduto > div" se torne visível

        Então  Eu saio do sistema


    Cenário:  Validar com sucesso a limpeza de cesta
        Dado   Eu preencho "393843" no inputfield "#inputBuscarItem" e submeto
        E      Eu pauso por 1000ms

        Então  Eu espero que o elemento "#contadorCesta" não contenha o texto "Cesta(0)"
        E      Eu pauso por 6000ms
        Quando Eu clico no botao "#botaoLimparCesta"
        Então  Eu espero que o elemento "#contadorCesta" contenha o texto "Cesta(0)"

        Então Eu saio do sistema
        

    Cenário:  Validar com sucesso a exclusão de um item da cesta
        Dado   Eu preencho "393843" no inputfield "#inputBuscarItem" e submeto
        E      Eu pauso por 1000ms
        Quando Eu clico no botao "#botaoExcluirItem > i"
        E      Eu pauso por 1000ms
        Então  Eu espero que o elemento "#botaoExcluirItem > i" não esteja visível

        Então Eu saio do sistema


    Cenário:  Validar  adição de mais quantidade de um item pela busca
        Dado   Eu preencho "381951" no inputfield "#inputBuscarItem" e submeto
        Quando Eu clico no botão "#botaoIncrementar" "2" vezes
        E      Eu pauso por 1000ms
        Então  Eu espero que o elemento "#espacoDescricaoProduto" contenha "OLAC"
        E      Eu espero que o inputfield "#inputQuantidade" contenha o texto "3"

        Então  Eu saio do sistema