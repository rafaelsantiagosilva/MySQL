-- DDL -> ALTER TABLE, DROP

USE cadastro;
desc gafanhotos; -- aparecer (pessoas) gafanhotos

ALTER TABLE pessoas
ADD COLUMN profissao varchar(10); -- adicionando a profissao como último atributo na tabela pessoas

ALTER TABLE pessoas
DROP profissao; -- removendo a profissao de pessoas

ALTER TABLE pessoas
ADD profissao varchar(10) AFTER nome; -- adicionando a profissao depois do nome

ALTER TABLE pessoas
ADD rg int FIRST; -- colocando RG como primeiro atributo 

ALTER TABLE pessoas
MODIFY profissao varchar(20) NOT NULL DEFAULT ''; -- alterando o tipo de profissao. posso alterar o tipo, tamanho, constrains mas não posso mudar o nome

ALTER TABLE pessoas
CHANGE profissao prof varchar(25); -- mudando nome e tamanho/tipo

ALTER TABLE pessoas
RENAME TO gafanhotos;

SELECT * FROM pessoas;

CREATE TABLE IF NOT EXISTS `cursos`( -- criar se já não existe a tabela cursos
nome varchar(30) NOT NULL UNIQUE, -- não vai deixar colocar 2 cursos com o mesmo nome mas é diferente de PRIMARY KEY
descricao text,
carga int UNSIGNED, --  sem sinal (positivo)
totalaulas int,
ano year DEFAULT '2023'
)DEFAULT CHARSET=utf8;

ALTER TABLE cursos
ADD idcurso int FIRST; -- colocando uma chave primária (1)

ALTER TABLE cursos
ADD PRIMARY KEY (idcurso); -- colocando uma chave primária (2)

DROP TABLE cursos; -- deletar a tabela cursos

DESCRIBE cursos;