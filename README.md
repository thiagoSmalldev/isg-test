# Teste Técnico

## Visão Geral

Este projeto tem como objetivo avaliar sua capacidade na criação de uma API Rails com funcionalidades fundamentais, incluindo operações CRUD, autenticação e associações entre modelos. O escopo do projeto inclui a implementação de rotas para cada uma das operações CRUD em relação aos seguintes modelos:

Usuário (id, nome, email, senha)
Post (id, título, texto, usuário [associação])
Comentário (id, nome, comentário, post [associação])

O projeto também exige a inclusão de uma rota de autenticação para permitir que os usuários se autentiquem antes de acessar as rotas protegidas. É altamente recomendado que sejam escritos testes para as rotas criadas, a fim de garantir o funcionamento adequado da API.

## Instalação

```bash
# Clone o repositório
git clone https://github.com/seu-usuario/seu-projeto.git

# Acesse o diretório do projeto
cd seu-projeto

# Instale as dependências
bundle install