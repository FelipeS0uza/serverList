CREATE DATABASE IF NOT EXISTS ativ4DB;

USE ativ4DB;

CREATE TABLE dados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    luta VARCHAR(255)
);

INSERT INTO dados (nome, luta) VALUES ('Felipe', 'Kick Boxing'), ('Antonio', 'Karate'), ('Luana', 'Judo'), ('Bruna', 'Muay Thai'), ('Carlos', 'Jiu Jitsu');
