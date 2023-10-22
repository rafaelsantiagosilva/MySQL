use cadastro;
describe gafanhotos;

###################### FOREIGN KEY ##############################

ALTER TABLE gafanhotos
ADD column cursopreferido int; -- Adicionando o atributo que irá ser a chave estrangeira do relacionamento

ALTER TABLE gafanhotos
ADD FOREIGN KEY (cursopreferido)
references cursos(idcurso); -- Setando como chave estrangeira

update gafanhotos set cursopreferido = '6' where id = '1'; -- Colocando um dado

select * from cursos;
delete from cursos where idcurso = '28'; -- Apagando onde NENHUM gafanhoto está relacionado

select nome, cursopreferido from gafanhotos;

select nome, ano from cursos;

############################### JOIN ####################################

select g.nome, c.nome, c.ano
from gafanhotos as g inner join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome; -- Mostrando quais são os cursos preferidos dos gafanhotos que possuem os cursos

select g.nome, c.nome, c.ano
from gafanhotos as g left outer join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome; -- Mostrando todos os alunos, independente de quem prefere ou não, pois o comando outer deu preferência para a tabela a esquerda
-- dele: gafanhotos. Porém, se tem destacado os cursos que preferem

select g.nome, c.nome, c.ano
from gafanhotos as g right outer join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;  -- Mostrando todos os cursos, independente de qual é preferido ou não, pois o comando outer deu preferência para a tabela a direita
-- dele: cursos. Porém, se tem o nome dos alunos que preferem o curso