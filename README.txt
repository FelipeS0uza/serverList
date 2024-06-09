# serverList

1) Execute o comando para estabelecer uma conexão entre o app e o servidor
	docker network create server-network


2) Para executar o banco de dados, rode o script abaixo
docker run -d --name serverlistON --network server-network -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -e MYSQL_DATABASE=ativ4DB -v db_data:/var/lib/mysql -v "${PWD}/init.sql:/docker-entrypoint-initdb.d/init.sql" -p 3307:3306 mysql:8.0.37



3) NO terminal execute o comando a seguir: 
	docker exec -it serverlistON bash


4) Execute o comando e dê enter(não tem senha):
	mysql -uroot -p


5) Execute o script abaixo: s
  CREATE TABLE dados (
      id INT AUTO_INCREMENT PRIMARY KEY,
      nome VARCHAR(255),
      luta VARCHAR(255)
  );
  
  INSERT INTO dados (nome, luta) VALUES ('Felipe', 'Kick Boxing'), ('Antonio', 'Karate'), ('Luana', 'Judo'), ('Bruna', 'Muay Thai'), ('Carlos', 'Jiu Jitsu');s


6) Para executar a aplicação, rode o script abaixo: 
  docker run -p 3000:3000 --name atv4 -d felipes0uza/atv4:0.0.1


7) docker-compose up --build


8) docker stop atv4


9)  docker start serverlist-app-1



10) Abra a URL http://localhost:3000


11) O link do GitHub é https://github.com/FelipeS0uza/serverList
  e do DockerHub é https://hub.docker.com/repository/docker/felipes0uza/atv4/general