            #language: pt


            Funcionalidade: Configurar produto
            Como Cliente da Ebac
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu selecione um produto na loja EBAC

            Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu quiser inserir meu produto no carrinho
            Então sistema deve apresentar a mensagem: "Seleção de cor, tamanho e quantidade Obrigatórias!"

            Cenário: Deve permitir apenas 10 produtos por venda
            Quando eu selecionar 15 peças para inserir no carrinho
            E se o resultado for >10
            Então sistema deve apresentar a mensagem: "Quantidade limite de 10 unidades por compra!"

            Cenário: Deve permitir apenas 10 produtos por venda
            Quando eu selecionar 9 peças para inserir no carrinho
            E se o resultado for <=10
            Então sistema deve apresentar a mensagem: "Incluído com Sucesso!"

            Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
            Quando eu clicar no botão: "limpar"
            Então sistema deve voltar as informações originais


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















