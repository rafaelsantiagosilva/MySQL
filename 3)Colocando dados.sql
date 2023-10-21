-- DML -> INSERT INTO -> Data Manipulation Language

-- Colocando dados
INSERT INTO pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade) -- ID autoincrementado, (por isso não está aqui) por isso pode tirar daqui
VALUES
-- Da para colocar vários valores de uma só vez desta forma
(DEFAULT, 'Roberto', '2001-09-14', 'M', '95.6', '1.99', DEFAULT), -- DEFAULT é o padrão
(DEFAULT, 'Ana', '2011-04-11', 'F', '30.6', '1.87', DEFAULT),
(DEFAULT, 'Sérgio', '1967-06-17', 'M', '68.7', '2.05', 'EUA');
-- Seelcionando tudo de pessoas, mostrando a tabela
SELECT * FROM pessoas;

-- Se colocar os valores na ordem correta, não é necessário informar quais são os atributos naquela primeira linha:
-- INSERT INTO pessoas VALUES