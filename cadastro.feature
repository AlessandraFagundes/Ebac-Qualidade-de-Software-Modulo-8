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





            Funcionalidade: Login na plataforma
            Como cliente da EBAC
            Quero fazer o login(autentição) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação do portal Ebac

            Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
            Quando eu inserir login "teste@ebac.com.br"
            E inserir a senha "teste123!@"
            E informações sendo "válido"
            Então sistema deve redirecionar usuário para a tela de checkout

            Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
            Quando eu inserir login "aluno@ebac.com.br"
            E inserir a senha "modulo8"
            E informações sendo "inválido"
            Então sistema deve exibir mensagem "Usuário ou senha Inválidos"

            Esquema do Cenário: testar usuários válidos e inválidos
            Quando eu inserir o <login>
            E eu inserir a <senha>
            Então sistema deve apresentar <mensagem>

            Exemplos:
            | Login                  | Senha      | Mensagem                     |
            | "mod8@ebac.com.br"     | "teste321" | "Usuário ou senha Inválidos" |
            | "mariaj@ebac.com.br"   | "m!@#"     | "Usuário ou senha Inválidos" |
            | "jv@ebac.com.br"       | "jv00@"    | "Usuário ou senha Inválidos" |
            | "fernando@ebac.com.br" | "fer9865#" | "Usuário autenticado!"       |
            | "rogerio@ebac.com.br"  | "us1234"   | "Usuário autenticado!"       |
            | "gabriela@ebac.com.br" | "gb852@"   | "Usuário autenticado!"       |




            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da Ebac
            Quero concluir meu cadastro
            Para finalizar minha compra



            Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Dado que eu faça login no portal Ebac
            Quando eu entrar na tela de checkout
            Então sistema deve apresentar campos obrigatórios marcados com asteriscos(*) na cor vermelha

            Contexto:
            Dado que eu entre na tela de checkout no site da Ebac

            Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando eu preencher campo e-mail com informação inválida
            E faltando caracter "@" ou ".com"
            Então sistema deve apresentar mensagem: "Formato de e-mail inválido!"

            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
            Quando eu clicar no botão de "Finalizar compra"
            E todos os campos obrigatórios não estiverem preenchidos
            Então sistema deve apresentar mensagem: "Todos os campos devem ser preenchidos!"

            Esquema do Cenário: testar e-mails válidos
            Quando eu inserir o <e-mail>
            E se existir caracter "@", atualizar <status> para válido
            Então sistema deve apresentar <mensagem> de validação

            Exemplos:
            | E-mail                    | Status     | Mensagem                                            |
            | "alessandra@ebac.com.br"  | "válido"   | "E-mail válido!"                                    |
            | "thiagosilva@ebac.com.br" | "válido"   | "E-mail válido!"                                    |
            | "giovaniebac.com.br"      | "inválido" | "E-mail inválido. Favor incluir informação válida!" |
            | "alessandrafagundes"      | "inválido" | "E-mail inválido. Favor incluir informação válida!" |


















