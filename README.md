<h1 align="center">
     🍝<a href="#" alt="https://github.com/andrermartins/inmana"> Inmana </a>
</h1>

<h3 align="center">
    🍗 Seu aplicativo para gerenciamento de suprimentos em alimentos para o seu restaurante. Ajudamos estabelecimentos de gastronomia a organizar o estoque de alimentos de forma mais eficiente. 🍅
</h3>

<p align="center">
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/andrermartins/inmana?color=%2304D361">

  <img alt="Repository size" src="https://img.shields.io/github/repo-size/andrermartins/inmana">

  <a href="https://twitter.com/andrermartins/">
    <img alt="Siga no Twitter" src="https://img.shields.io/twitter/url?style=social&url=https%3A%2F%2Ftwitter.com%2Fandrermartins">
  </a>
  
  <a href="https://github.com/andrermartins/inmana/commits/master">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/andrermartins/inmana">
  </a>
    
   <img alt="License" src="https://img.shields.io/badge/license-MIT-brightgreen">
   <a href="https://github.com/andrermartins/inmana/stargazers">
    <img alt="Stargazers" src="https://img.shields.io/github/stars/andrermartins/inmana?style=social">
  </a>
</p>

Tabela de conteúdos
=================
<!--ts-->
   * [Sobre o projeto](#-sobre-o-projeto)
   * [Funcionalidades](#-funcionalidades)
   * [Como executar o projeto](#-como-executar-o-projeto)
     * [Pré-requisitos](#pré-requisitos)
     * [Rodando o Backend (servidor)](#user-content--rodando-o-servidor)
   * [Tecnologias](#-tecnologias)
     * [Aplicação Servidor](#user-content-aplicação-servidor)
     * [Utilitários](#user-content-utilitários)
   * [Como contribuir no projeto](#-como-contribuir-no-projeto)
   * [Autor](#-autor)
   * [Licença](#user-content--licença)
<!--te-->


## 💻 Sobre o projeto

🍝 Inmana - é uma forma de melhorar o gerenciamento dos alimentos utilizados pelo restaurante, através do cadastro dos suplimentos em estoque conforme são utilizados, é possível monitorar a data de vencimento dos alimentos conforme descrito na etiqueta da *Anvisa*.

Projeto desenvolvido durante a **NLW - Next Level Week 5** oferecida pela [Rocketseat](https://blog.rocketseat.com.br).
O NLW é uma experiência online com muito conteúdo prático, desafios e hacks onde o conteúdo fica disponível durante uma semana.

---

## ⚙️ Funcionalidades

- [x] Restaurantes podem ser cadastrados na plataforma enviando:
  - [x] Nome do estabelecimento.
  - [x] E endereço de email.

- [x] Os restaurantes que tem acesso a plataforma podem:
  - [x] Cadastrar suprimentos informando:
    - [x] Descrição do suprimento (exemplo molho de tomate 2 Litros).
    - [x] Data de vencimento.
    - [x] E nome do responsável pela manipulação.
  - [x] Navegar pelo sistema para verificar/atualizar/remover os suprimentos cadastrados.
  - [x] Receber emails semanais com os suprimentos que vencem na semana seguinte.

---

## 🚀 Como executar o projeto

Este projeto foi desenvolvido utilizando APIs REST.
### Pré-requisitos

Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas:
[Git](https://git-scm.com), [Node.js](https://nodejs.org/en/). 
Além disto é bom ter um editor para trabalhar com o código como [VSCode](https://code.visualstudio.com/)

#### 🎲 Rodando o servidor

```bash

# Clone este repositório
$ git clone git@github.com:andrermartins/inmana.git

# Acesse a pasta do projeto no terminal/cmd
$ cd inmana

# Instale as dependências
$ mix deps.get

# Crie e migre a base de dados
$ mix ecto.setup

# Execute a aplicação
$ mix phx.server

# O servidor inciará na porta:4000 - acesse http://localhost:4000

```
<p align="center">
  <a href="https://github.com/andrermartins/inmana/blob/master/Insomnia_API_Inmana.json" target="_blank"><img src="https://insomnia.rest/images/run.svg" alt="Run in Insomnia"></a>
</p>

---

## 🛠 Tecnologias

As seguintes ferramentas foram usadas na construção do projeto:

#### [](https://github.com/andrermartins/inmana#server)**Aplicação Servidor**

-   **[Elixir](https://elixir-lang.org/)**
-   **[Phoenix Framework](https://www.phoenixframework.org/)**
-   **[PostgreSQL](https://www.postgresql.org/)**
-   **[Credo](https://github.com/rrrene/credo)**
-   **[Bamboo](https://github.com/thoughtbot/bamboo)**
-   **[Excoveralls](https://github.com/parroty/excoveralls)**
-   **[dotENV](https://github.com/motdotla/dotenv)**

#### [](https://github.com/andrermartins/inmana#utilit%C3%A1rios)**Utilitários**

-   Editor:  **[Visual Studio Code](https://code.visualstudio.com/)**  →  Extensions:  **[Elixir Linter (Credo)](https://marketplace.visualstudio.com/items?itemName=pantajoe.vscode-elixir-credo)**,  **[ElixirLS](https://marketplace.visualstudio.com/items?itemName=JakeBecker.elixir-ls)**
-   Markdown:  **[StackEdit](https://stackedit.io/)**,  **[Markdown Emoji](https://gist.github.com/rxaviers/7360908)**
-   Commit Conventional:  **[Commitlint](https://github.com/conventional-changelog/commitlint)**
-   Teste de API:  **[Insomnia](https://insomnia.rest/)**

---

## 💪 Como contribuir no projeto

1. Faça um **fork** do projeto.
2. Crie uma nova branch com as suas alterações: `git checkout -b my-feature`
3. Salve as alterações e crie uma mensagem de commit contando o que você fez: `git commit -m "feature: My new feature"`
4. Envie as suas alterações: `git push origin my-feature`

---

## 🦸 Autor

<a href="https://www.linkedin.com/in/andrermartins/">
 <img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/221771?v=4" width="100px;" alt=""/>
 <br />
 <sub><b>André Martins</b></sub></a>
 <br />

---

## 📝 Licença

Este projeto esta sobe a licença [MIT](./LICENSE).

Feito por André Martins 👋🏽 [Entre em contato!](https://www.linkedin.com/in/andrermartins/)
