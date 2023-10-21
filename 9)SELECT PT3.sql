######### DISTINCT ###############################
SELECT DISTINCT carga FROM CURSOS
ORDER BY carga; -- Selecionando apenas os diferentes, distinguindo

######### GROUP BY ###############################
SELECT carga FROM cursos
GROUP BY carga; -- Agrupando todos em um

############ AGRUPANDO E AGREGANDO ################
SELECT carga, COUNT(*) FROM cursos
GROUP BY carga; -- Conta quantos cursos tem com aquela carga

SELECT * FROM cursos WHERE carga = 20; -- Mostrando cursos com carga igual a 20

########### GROUP BY HAVING ##############
SELECT ano, COUNT(*) FROM cursos
GROUP BY ano HAVING COUNT(ano) >= 5
ORDER BY COUNT(ano) desc;

SELECT carga, count(*) FROM cursos -- Selecionando os cursos de anos depois de 2015 que estão acima da média das cargas horárias
where ano > 2015
group by carga having carga > (select avg(carga) from cursos);

# Exercício 1
SELECT profissao, count(*) FROM gafanhotos
GROUP BY profissao;

# Exercício 2
SELECT sexo, count(*) FROM gafanhotos
WHERE nascimento > 2005-01-01
GROUP BY sexo;

# Exercício 3
SELECT nacionalidade, count(*) FROM gafanhotos
WHERE nacionalidade <> 'Brasil'
GROUP BY nacionalidade having count(nacionalidade) > 3;

# Exercício 4
SELECT altura, count(*) FROM gafanhotos
WHERE peso > 100.00
GROUP BY altura > (select avg(altura) from gafanhotos);