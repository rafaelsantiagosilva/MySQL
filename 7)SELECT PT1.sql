# DQL - Data Query Language - SELECT

############# COLUNAS ###################

select * from cursos

order by nome; # Organizando tudo em ordem alfabética
# order by nome desc; # Organizando tudo em ordem "analfabética"

select ano, nome, carga from cursos # Mostra somente as colunas necessárias na ordem desejada
order by ano, nome;

############## LINHAS ######################

select nome from cursos # Selecionando todas as linhas onde tem o ano = 2016 e mostrando o valor dos nomes
where ano = '2016'
order by nome;

########## OPERADORES #########################

select nome, descricao from cursos # Selecionando as linhas e mostrando seu nome e descrição das quais possuem ano menor ou igual a 2015
where ano <= 2015
order by nome;

select * from cursos # Selecionando todos os campos que os anos estão entre 2015 e 2020
where ano between 2018 and 2020
order by ano desc, nome asc; # Asc é ordem crescente e Desc decrescente

SELECT nome, descricao, ano from cursos # Mostrando os cursos que estão nos anos de 2014, 2017, 2020
where ano in (2014, 2017, 2020)
order by ano desc, nome asc;

############### 'IF' com E e OU ######################
select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 30; # (condição) && (condição)

select nome, carga, totaulas from cursos
where carga > 35 or totaulas < 30; # (condição) || (condição);