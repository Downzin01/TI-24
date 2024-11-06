--- Atividade 1

CREATE DATABASE db_nutricao;

CREATE TABLE tb_cliente (
    codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    peso FLOAT(10, 2) NOT NULL,
    altura FLOAT(10, 2) NOT NULL,
    data_nascimento DATETIME NOT NULL,
    data_ultima_consulta DATETIME
);

--- Atividade 2
INSERT INTO tb_cliente (nome, cidade, estado, peso, altura, data_nascimento, data_ultima_consulta) VALUES
('Arnaldo Antunes', 'Americana', 'SP', 90, 1.80, '1988-10-20', '2018-09-24'),
('Claudemir Silva', 'Campinas', 'SP', 75, 1.90, '1988-11-30', '2018-09-10'),
('Roberto da Costa', 'Americana', 'SP', 92, 1.70, '1986-08-05', '2018-06-05'),
('Mônica Silva', 'Rio de Janeiro', 'RJ', 78, 1.75, '1988-05-28', '2018-10-17'),
('Renata Domingues', 'Ouro Preto', 'MG', 62, 1.63, '1991-12-01', '2018-11-15'),
('Cleide Souza', 'Campinas', 'SP', 68, 1.50, '1988-11-22', '2018-11-09'),
('Fernanda Souza', 'Rio de Janeiro', 'RJ', 75, 1.70, '1992-05-15', '2018-09-10'),
('Fernando Souza', 'Campinas', 'SP', 82, 1.75, '1987-05-02', '2018-09-15'),
('Renato Araújo', 'Belo Horizonte', 'MG', 95, 1.85, '1986-01-10', '2018-09-17'),
('Franciele Freitas', 'Americana', 'RJ', 70, 1.68, '1992-02-18', '2018-10-17'),
('Claudemir Rezende', 'Americana', 'SP', 75, 1.78, '1992-05-07', '2018-09-15');

--- Atividade 3
SELECT * FROM tb_cliente;

--- Atividade 4
SELECT nome FROM tb_cliente WHERE cidade = 'Americana';

--- Atividade 5
SELECT nome FROM tb_cliente WHERE cidade = 'Campinas';

--- Atividade 6
SELECT * FROM tb_cliente WHERE nome = 'Renata Domingues';

--- Atividade 7
SELECT * FROM tb_cliente WHERE peso > 80;

--- Atividade 8
SELECT * FROM tb_cliente WHERE altura < 1.7;

--- Atividade 9 
SELECT * FROM tb_cliente WHERE data_nascimento = '1992-05-07';

--- Atividade 10
SELECT * FROM tb_cliente WHERE estado != 'SP';

--- Atividade 11
SELECT * FROM tb_cliente WHERE estado <> 'SP';

--- Atividade 12
SELECT nome FROM tb_cliente WHERE cidade = 'Americana' AND estado = 'SP';

--- Atividade 13
SELECT nome FROM tb_cliente WHERE cidade = 'Campinas' OR estado = 'RJ';

--- Atividade 14
SELECT * FROM tb_cliente WHERE peso > 80 AND altura > 1.8;

--- Atividade 15
SELECT * FROM tb_cliente WHERE peso > 80 AND altura < 1.8;

--- Atividade 16
UPDATE tb_cliente SET altura = 1.8 WHERE codigo = 2;

--- Atividade 17
DELETE FROM tb_cliente WHERE nome = 'Arnaldo Antunes';

--- Atividade 18
DELETE FROM tb_cliente WHERE nome = 'Roberto da Costa';

--- Atividade 19
DELETE FROM tb_cliente WHERE nome = 'Fernanda Souza';

--- Atividade 20
DELETE FROM tb_cliente WHERE nome = 'Franciele Freitas';
