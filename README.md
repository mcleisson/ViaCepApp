# README

Este projeto é para exemplificar a utilização de autenticação com Devise e a pesquisa de endereço do contato via API do ViaCEP. 
Após criar uma conta de acesso, o usuário pode cadastrar seus contatos e efetuar a busca do endereço por CEP, onde é inserida a geolocalização LAT e LONG do endereço.
Os usuários podem cadastrar o mesmo CPF 1x na base de dados, e os usuários tem essa lista de contatos restrita, ou seja, um não visualiza os contatos dos outro. Foi implantado o GoogleMaps para localização do endereço via geolocalização, porém deve ser configurado o arquivo app/views/layouts/application.html.erb na tag script na linha 5, a sua API Key do google para funcionamento.



* Ruby version
   - "2.7.0"

* Rails version
   - "7.0.8"

* System dependencies
   - NodeJS 12.22.9

* Configuration
   - Baixe o projeto 
   - rode no terminal o comando bundle install para instalar as dependencias do projeto

* Database creation
   - O projeto foi criado com SQLite para facilitar a configuração. Caso queira usar MySQL ou PostgreSQL, abra o Gemfile e adicione a gem do seu banco preferido, e
    execute o comando bundle install, acesse o arquivo config/database.yml e efetue a a configuração com as suas credenciais do banco de dados. 
   - Não esqueça de colocar o # na linha onde consta o SQLite no arquivo Gemfile.

    - Para criar o banco execute no terminal: rails db:create && db:migrate
    - Isso irá criar o banco e criar as tabelas no banco de dados.
