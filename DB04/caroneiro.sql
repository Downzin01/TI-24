---- Atividade 1
CREATE TABLE tb_usuario (
	codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100),
	cidade VARCHAR(100),
	estado VARCHAR(100),
	data_nascimento DATETIME,
	tipo VARCHAR(50)
);

CREATE TABLE tb_veiculo (
	codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	modelo VARCHAR(100),
	marca VARCHAR(50),
	ano INT NOT NULL,
	cor VARCHAR(50)
);

CREATE TABLE tb_viagem (
	codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	data_viagem DATETIME,
	motorista INT NOT NULL,
	passageiro INT NOT NULL,
	origem VARCHAR(100),
	destino VARCHAR(100)
);

---- Atividade 2
INSERT INTO tb_usuario (nome, cidade, estado, data_nascimento, tipo) 
VALUES
	('Frederica Piragibe', 'Americana', 'SP', '1990-10-20', 'Motorista'),
	('Gisela Campos', 'Campinas', 'SP', '1992-11-30', 'Passageiro'),
	('Gláuber Moita', 'Americana', 'SP', '1985-08-05', 'Passageiro'),
	('Gustavo Vaz', 'São Paulo', 'SP', '1995-05-20', 'Passageiro'),
	('Herberto Mantas', 'São Paulo', 'SP', '1989-01-21', 'Passageiro'),
	('Ibijara Faria', 'São Paulo', 'SP', '1991-10-22', 'Passageiro'),
	('Ibijara Menezes', 'Rio Claro', 'SP', '1993-05-10', 'Motorista'),
	('Ilma Garcia', 'Campinas', 'SP', '1994-06-15', 'Motorista'),
	('Ingrit Moreyra', 'Limeira', 'SP', '1991-01-20', 'Passageiro'),
	('Ivete Amaro', 'Piracicaba', 'SP', '1990-02-18', 'Passageiro'),
	('Jorge Malheiro', 'Americana', 'SP', '1992-05-07', 'Motorista');

INSERT INTO tb_veiculo (modelo, marca, ano, cor) 
VALUES
	('gol', 'volkswagen', 2018, 'Preto'),
	('sandero', 'renault', 2017, 'Branco'),
	('306', 'peugeot', 2010, 'Vermelho'),
	('uno', 'fiat', 2012, 'Preto'),
	('palio', 'fiat', 2017, 'Preto'),
	('golf', 'volkswagen', 2018, 'Prata'),
	('up', 'volkswagen', 2018, 'Amarelo');

INSERT INTO tb_viagem (data_viagem, motorista, passageiro, origem, destino)
VALUES
	('2018-10-30', 1, 2, 'Americana', 'São Carlos'),
	('2018-10-29', 2, 5, 'Campinas', 'Rio Claro'),
	('2018-10-29', 3, 2, 'São Paulo', 'Americana'),
	('2018-10-30', 4, 3, 'Campinas', 'São Carlos'),
	('2018-10-30', 5, 1, 'Americana', 'São Paulo'),
	('2018-10-30', 6, 1, 'Sumaré', 'São Paulo'),
	('2018-10-29', 7, 1, 'São Carlos', 'São Paulo'),
	('2018-10-29', 8, 2, 'Rio Claro', 'Campinas'),
	('2018-10-30', 9, 3, 'São Paulo', 'Americana'),
	('2018-10-30', 10, 1, 'Americana', 'São Paulo');

---- Atividade 3
SELECT * FROM tb_usuario;

---- Atividade 4
SELECT * FROM tb_usuario WHERE cidade = 'Limeira' OR cidade = 'Piracicaba';

---- Atividade 5
SELECT * FROM tb_usuario WHERE cidade = 'Campinas';

---- Atividade 6
SELECT * FROM tb_usuario WHERE nome = 'Ingrit Moreyra';

---- Atividade 7
SELECT * FROM tb_usuario WHERE data_nascimento > '1990-01-01';

---- Atividade 8
SELECT * FROM tb_usuario WHERE tipo = 'motorista';

---- Atividade 9
SELECT * FROM tb_usuario WHERE tipo = 'passageiro';

---- Atividade 10
SELECT * FROM tb_usuario WHERE cidade NOT 'Americana';
SELECT * FROM tb_usuario WHERE NOT cidade = 'Americana';

---- Atividade 11
SELECT * FROM tb_usuario WHERE estado != 'SP';

---- Atividade 12
SELECT * FROM tb_usuario WHERE cidade = 'Piracicaba';

---- Atividade 13
SELECT * FROM tb_usuario WHERE tipo = 'passageiro' AND cidade = 'Americana';

---- Atividade 14
SELECT * FROM tb_usuario WHERE tipo = 'motorista' AND cidade = 'Americana';

---- Atividade 15
SELECT * FROM tb_usuario WHERE tipo = 'motorista' AND cidade != 'Americana';

---- Atividade 16
UPDATE tb_usuario SET nome = 'Ingrid Moreira' WHERE nome = 'Ingrit Moreyra';

---- Atividade 17
DELETE FROM tb_usuario WHERE nome = 'Jorge Malheiro';

---- Atividade 18
DELETE FROM tb_usuario WHERE nome = 'Ilma Garcia';

---- Atividade 19
UPDATE tb_veiculo SET marca = 'fiat' WHERE marca = 'fiat';
UPDATE tb_veiculo SET marca = UPPER('fiat') WHERE marca = 'fiat';

---- Atividade 20
UPDATE tb_veiculo SET modelo = CONCAT(UPPER(LEFT(modelo, 1)), LOWER(SUBSTRING(modelo, 2)));

---- Atividade 22
SELECT * FROM tb_veiculo;

---- Atividade 23
SELECT * FROM tb_veiculo WHERE marca = UPPER('fiat');

---- Atividade 24
SELECT * FROM tb_veiculo WHERE marca = 'volkswagen';

---- Atividade 25
SELECT marca, modelo, ano FROM tb_veiculo WHERE ano = 2018;

---- Atividade 26
SELECT * FROM tb_veiculo WHERE ano != 2018;

---- Atividade 27
UPDATE tb_veiculo SET cor = 'Branco' WHERE modelo = 'Up' AND modelo = 'Amarelo';

---- Atividade 28
DELETE FROM tb_veiculo WHERE modelo = 'Golf';
