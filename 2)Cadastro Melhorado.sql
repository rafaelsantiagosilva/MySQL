-- DDL -> CREATE TABLE E CREATE DATABASE -> DATA DEFINITION LANGUAGE

CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE cadastro;
CREATE TABLE `pessoas`(
`id` int NOT NULL AUTO_INCREMENT, 

-- Obrigatório
`nome` varchar(30) NOT NULL,
`nascimento` date NOT NULL,

-- Somente duas opções
`sexo` enum('M', 'F') NOT NULL DEFAULT 'M',

-- 5 numeros totais e dois após a virgula
`peso` decimal(5,2) NOT NULL,
`altura` decimal(3, 2) NOT NULL,

-- Caso ninguém digite nada, recebe Brasil
`nacionalidade` varchar(20) DEFAULT 'Brasil',
PRIMARY KEY(id) 
)DEFAULT CHARSET=utf8;
