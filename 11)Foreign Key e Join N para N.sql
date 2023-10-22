################## Criando relacionamento N para N #################################

CREATE TABLE gafanhoto_assiste_curso(
id int NOT NULL auto_increment,
data date,
idgafanhoto int,
idcurso int,
PRIMARY KEY (id),
FOREIGN KEY (idgafanhoto) references gafanhotos(id),
FOREIGN KEY (idcurso) references cursos(idcurso)
) DEFAULT CHARSET = 'utf8'; -- Criando a tabela do relacionamento assiste por ser n para n

select * from gafanhoto_assiste_curso; -- Tem nada ainda :(

INSERT INTO gafanhoto_assiste_curso values (DEFAULT, '2014-03-01', '1', '2'); -- Colocando coisas :)

################ JOINS #######################################

SELECT g.nome, a.idgafanhoto, c.nome FROM gafanhotos as g
INNER JOIN gafanhoto_assiste_curso as a
on g.id = a.idgafanhoto
INNER JOIN cursos as c
on c.idcurso = a.idcurso
order by g.nome; -- Filtrando para mostrar a tabela do relacionamento, de gafanhotos e dos cursos