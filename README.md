## DOT - DESAFIO TÉCNICO QA AUTOMATION
Considerando uma plataforma com e-commerce integrado (por exemplo: Americanas, Ponto Frio, Extra, Amazon, DemoBlaze, Demo OpenCart, Udemy, Hotmart, entre outros...) escolha um como alvo e crie testes considerando principalmente o cenário da funcionalidade "Carrinho de Compras". Em seguida, desenvolva os scripts de automação (na linguagem que preferir, comentários no código e/ou markdown são bem-vindos) dos casos de teste que levantou e então disponibilize no campo abaixo o link público do repositório dos seus scripts para nossa avaliação, por exemplo, GitHub ou GitLab. Tenha certeza que o código fique disponível e acessível até que receba o nosso retorno. E vale lembrar: capriche e ouse.

## Instalando o Ruby

1. Baixar instalador

```
$ https://rubyinstaller.org/downloads/
```
Obs.: Baixar sempre a versão com DevKit e a mais estável.

2. Não alterar nada no instalador e seguir as instruções.


## Instalando NodeJS

1. Baixar instalador 
```
$ https://nodejs.org/en/
```
Obs.: Dê a preferência para a versão LTS.


2. Não alterar nada no instalador e seguir as instruções.


## Instalação Chromedriver

1. Baixar o Chromedriver de acordo com a sua versão do Chrome.

```
$ https://chromedriver.chromium.org/downloads
```

3. Extrair o .zip e adicionar o arquivo .exe no diretório "C:\Windows" ou qualquer outra que esteja no PATH.


## Passos para rodar projeto

1. Clonar o repositório

```
$ git clone https://github.com/lwagenska/desafio-dot.git
```

 2. Instalando os pacotes

Acesse a pasta raiz do projeto no seu prompt de comando ou o que desejar e execute o comando:
```
$ gem install bundler
```

Para instalar as gems:
```
$ bundle install
```

Depois de todas as dependências instaladas, pode executar os testes via linha de comando:
```
$ cucumber
```

Caso queira executar via tags, basta fazer da seguinte forma:
```
$ cucumber -t @cart //executa todos os cenários
$ cucumber -t @add_product
$ cucumber -t @add_products
$ cucumber -t @delete_product
$ cucumber -t @delete_all_products
```