             #language: pt

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
