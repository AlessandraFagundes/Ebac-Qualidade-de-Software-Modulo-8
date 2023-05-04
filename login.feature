            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC
            Quero fazer o login(autentição) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação do portal Ebac

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
