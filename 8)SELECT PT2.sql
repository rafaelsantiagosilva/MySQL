####### LIKE #########
select * from cursos
where nome like 'p%' ; # Operador onde like == "parecido", que comece com p. O % substituiu nenhum ou vários caracteres

select * from cursos
where nome like '%a' ; # Operador onde like == "parecido", que acabe com a. O % substituiu nenhum ou vários caracteres

select * from cursos
where nome like '%a%' ; # Operador onde like == "parecido", que tenha a. O % substituiu nenhum ou vários caracteres

select * from cursos
where nome not like '%a%' ; # Operador onde like == "parecido", que NÃO tenha a. O % substituiu NENHUM ou vários CARACTERES

select * from cursos
where nome like 'ph%p_'; # O _ substituiu vários CARACTERES

select * from gafanhotos
where nome like '%_silva%'; # Só quem tem Silva com um espaço antes

select * from gafanhotos
where nome like '%silva'; # Só quem termina com Silva

########## DISTINCT ############
select distinct nacionalidade from gafanhotos # Mesmo que repita, só aparece uma vez o valor
order by nacionalidade; 

##### FUNÇÕES DE AGREGAÇÃO #########
select count(idcurso) from cursos; # Conta quantos nomes tem cadastrados
select count(*) from gafanhotos; # Conta quantos registros tem cadastrados

select max(carga) from cursos; # Qual é o maior valor de determinado campo
select min(carga) from cursos; # Qual é o menor valor de determinado campo
select sum(totaulas) from cursos where ano = '2016'; # Soma do total de aulas de todos os registros onde o ano é igual a 2016
select avg(totaulas) from cursos where ano = '2016'; # Média de total de aulas de todos os registros onde o ano é igual a 2016

# EXERCÍCIOS #
#1#
select nome from gafanhotos
where sexo = 'F';

#2#
select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31'
order by nascimento asc;

#3#
select nome from gafanhotos
where profissao = 'Programador' and sexo = 'M';

#4#
select * from gafanhotos
where sexo = 'F' and nome like "j%" and nacionalidade = 'Brasil';

#5#
select nome, nacionalidade from gafanhotos
where sexo = 'M' and nome like "%silva%" and nacionalidade != 'Brasil' and peso<100;

#6#
select max(altura) from gafanhotos
where sexo = 'M' and nacionalidade = 'Brasil';

#7#
select avg(peso) from gafanhotos;

#8#
select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

#9#
select count(altura) from gafanhotos
where altura > 1.90;