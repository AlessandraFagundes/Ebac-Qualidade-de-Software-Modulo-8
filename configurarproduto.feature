            #language: pt


            Funcionalidade: Configurar produto
            Como Cliente da Ebac
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu selecione um produto na loja EBAC

            Esquema do Cenário: Testar permissões de quantidades de produtos
            Quando eu selecionar <quantidade> e inserir no carrinho
            E se quantidade for > <limite> ou <= <limite>
            Então sistema deve apresentar <mensagem> de sucesso

            Exemplos:
            | Quantidade | Limite | Mensagem                                       |
            | "15"       | "10"   | "Quantidade limite de 10 unidades por compra!" |
            | "12"       | "10"   | "Quantidade limite de 10 unidades por compra!" |
            | "45"       | "10"   | "Quantidade limite de 10 unidades por compra!" |
            | "2"        | "10"   | "Incluído com Sucesso!"                        |
            | "9"        | "10"   | "Incluído com Sucesso!"                        |
            | "10"       | "10"   | "Incluído com Sucesso!"                        |














