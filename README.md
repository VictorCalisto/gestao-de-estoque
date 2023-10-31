# Gestão de Estoque

Este é um projeto educacional criado com o propósito de testar conhecimentos e habilidades em diferentes áreas. Os dados apresentados neste projeto são completamente fictícios e foram gerados para fins de demonstração, por isso foram versionados.

## Baixar e instalar

Antes de iniciar, certifique-se de que os seguintes requisitos estejam atendidos:

- Git: [Instale o Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- Docker: [Instale o Docker](https://docs.docker.com/get-docker/)


Para executar este projeto em seu ambiente de desenvolvimento, siga as etapas abaixo:
1. **Clone o repositório do projeto com o Git:**
```bash
https://github.com/VictorCalisto/gestao-de-estoque.git
```
2. **Navegue até o diretório do projeto:**
```bash
cd gestao-de-estoque
```
3. **Construa e execute os contêineres Docker:**
```bash
docker-compose up --build
```

## Baixar e instalar sem Git e Docker

Antes de iniciar, certifique-se de que os seguintes requisitos de software estejam atendidos:

- [Ruby 3.2.2](https://www.ruby-lang.org/en/downloads/)
- [Ruby on Rails 7.1.1](https://rubyonrails.org/)
- [Python 3.13.0](https://www.python.org/downloads/)
- [SQLite3](https://www.sqlite.org/download.html)
- [PostgreSQL 16.0](https://www.postgresql.org/download/)
- Descompactador (por exemplo, [7-Zip](https://www.7-zip.org/download.html) ou [WinRAR](https://www.win-rar.com/download.html))

Para executar este projeto em seu ambiente de desenvolvimento, siga as etapas abaixo:

1. **Baixe o código-fonte:**

   [Baixe o arquivo ZIP aqui](https://github.com/VictorCalisto/gestao-de-estoque/archive/refs/heads/main.zip)

2. **Descompacte o arquivo ZIP:** Extraia o conteúdo do arquivo ZIP para uma pasta de sua escolha em seu sistema.

3. **Navegue até a pasta do projeto:**

   Abra uma janela do terminal e navegue até a pasta `/gestao-de-estoque/gestao_estoque` dentro da pasta onde você extraiu o código-fonte. Você pode usar o comando `cd` para fazer isso.

4. **Dê permissão de execução ao script:**

   Execute o seguinte comando para dar permissão de execução ao script `docker-entrypoint.sh`:

   ```bash
   chmod +x docker-entrypoint.sh
   ```
    chmod +x gestao-de-estoque/gestao_estoque/docker-entrypoint.sh
5. **Execute o script docker-entrypoint.sh:**
    ```bash
    sh docker-entrypoint.sh
    ```
## Acessar

Acesso disponível apos baixar e instalar:

- Aplicação Web: [Gestor de Estoque](http://localhost:3000)
- Banco: [Postgres](http://localhost:5432)

## Descrição do Projeto

Neste projeto, exploro o conceito de uma aplicação web,de modelagem de dados na criação do banco, de SQL na manipulação do banco de dados. Além disso, abordo a implementação do Docker, Ruby on Rails e Python. O objetivo principal é aprender e aplicar os conhecimentos em cada uma dessas áreas de acordo com as minhas preferencias.

## Estrutura do Repositório

- `/gestao_estoque`: Aplicação web em Ruby on Rails. Primeiro contêiner.
- `/data`: Volume do banco de dados. Esta pasta não foi versionada. Segundo contêiner.
- `/python`: O propósito dessa pasta é aprender Python e SQL. A ideia é que aqui eu faça alterações no banco de dados fora da aplicação, simulando os outros sistemas da empresa (que não possuem uma API, devido à minha necessidade de aprender Python e SQL). Terceiro contêiner.

## Licença

Este projeto é de código aberto e segue os princípios do libertarianismo anarco-capitalista. Sinta-se à vontade para usá-lo e adaptá-lo de acordo com suas necessidades.

## Agradecimento

Agradecemos por visitar este projeto. Divirta-se explorando os tópicos que mais lhe interessam!
