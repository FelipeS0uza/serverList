# serverList

1) Para executar o banco de dados, rode o script abaixo
docker run -d -p 3306:3306 --name mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_USER=user -e MYSQL_PASSWORD=passwd -e MYSQL_DATABASE=db_aula mysql/mysql-server:latest

2) Execute o script abaixo: 
  CREATE DATABASE IF NOT EXISTS ativ4DB;
  
  USE ativ4DB;
  
  CREATE TABLE dados (
      id INT AUTO_INCREMENT PRIMARY KEY,
      nome VARCHAR(255),
      luta VARCHAR(255)
  );
  
  INSERT INTO dados (nome, luta) VALUES ('Felipe', 'Kick Boxing'), ('Antonio', 'Karate'), ('Luana', 'Judo'), ('Bruna', 'Muay Thai'), ('Carlos', 'Jiu Jitsu');

3) Para executar a aplicação, rode o script abaixo: 
  docker run -p 3000:3000 --name atv4 -d felipes0uza/atv4:0.0.1

4) Abra a URL http://localhost:3000

5) O link do GitHub é https://github.com/FelipeS0uza/serverList
  e do DockerHub é https://hub.docker.com/repository/docker/felipes0uza/atv4/general
