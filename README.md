<h2>
  📃 Sobre a API
</h2>

<i>Pontodesk-server-v1</i> é uma API que tem como objetivo armazenar contas de usuários junto com seus chamados criados ou já resolvidos (Arquivados) e também podendo descrever uma analise sobre o atendimento prestado durante o chamado aberto e claro sendo armazenado dentro de um database em PostgreSQL.

<h2>🔧 Ferramentas utilizadas</h2>
Para o desenvolvimento do projeto, foram utilizados as principais ferramentas:
<ul>
  <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  <li><a href="https://rubygems.org/gems/devise/versions/4.2.0?locale=pt-BR">Devise</a></li>
  <li><a href="https://github.com/jwt/ruby-jwt">Json Web Token</a></li>
  <li><a href="https://rubygems.org/gems/kaminari/versions/0.17.0?locale=pt-BR">Kaminari</a></li>
  <li><a href="https://rubygems.org/gems/active_model_serializers/versions/0.10.2?locale=pt-BR">Active Model Serializers</a></li>
  <li><a href="https://www.docker.com/">Docker</a></li>
  <li><a href="https://www.postman.com/">Insomnia</a></li>
  <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
</ul>

<h2>⚙ Rodando a aplicação</h2>
<ul>
  <li>É <b>necessário</b> possuir o <a href="https://docs.docker.com/get-docker/">Docker</a>.</li>
</ul>

<h3>Caso tudo esteja certo, siga o passo a passo abaixo:</h3>

1. Clone o repositório em sua maquina utilizando:
```sh
  $ git clone https://github.com/Allan-Sartor-Pontomais/pontodesk-server-v1.git
```
2. Instale as dependências do projeto rodando o seguinte comando:
```sh
  $ docker-compose up
```
3. Após finalizar o comando acima feche o servidor "Ctrl+C" e rode:
```sh
  $ docker-compose run app rails db:create db:migrate
```
4. Agora é só rodar o comando abaixo e pronto, já está configurado e funcional a API!
```sh
  $ docker-compose up
```
5. Se tudo estiver certo, à API irá iniciar no endereço http://localhost:3001/v1/api/

<hr>

<h3>Para testar as requisições do server acessar documentação Insomnia</h3>

<b>Documentação: </b> <a href="#">Em desenvolvimento!!</a>.

<hr>

<h4 align="center">
    Created by <a href="https://www.linkedin.com/in/allan-gustavo-aa6844131/" target="_blank">Allan Sartor</a>
</h4>