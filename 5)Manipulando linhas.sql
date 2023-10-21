-- DML -> Update, Delete, Truncate

select * from gafanhotos;

select * from cursos;
insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Curso de introdução à linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

UPDATE cursos
SET nome = 'HTML5'
WHERE idcurso = '1'; -- modificando a tabela cursos, mudando o atributo nome na linha em que o atributo idcurso é igual a 1

UPDATE cursos
SET nome = 'PHP', ano = '2015'
WHERE idcurso = '4';

UPDATE cursos
SET nome = 'Java', ano = '2015', carga = '40'
WHERE idcurso = '5'
LIMIT 1; -- vai ser afetado somente uma linha

UPDATE cursos
SET carga = '800'
WHERE ano = '2018'; -- modificaria várias linhas, pois há 3 linhas com o ano igual a 2018

DELETE FROM cursos
WHERE idcurso = '10'; -- deletando a linha com id 10

TRUNCATE cursos; -- apagando T O D A S as linhas da tabela.