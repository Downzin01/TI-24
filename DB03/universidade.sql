---- Atividade 1
CREATE DATABASE db_universidade;
USE db_universidade;

---- Atividade 2
CREATE TABLE tb_alunos (
    codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    estado VARCHAR(2),
)

---- Atividade 3
CREATE TABLE tb_alunos2 (
    codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    estado VARCHAR(2),
)

---- Atividade 4
INSERT INTO tb_alunos (nome, estado)
VALUES 
    ('Bruce Wayne', 'SP'),
    ('Clark Kent','RJ'),
    ('Adamastor Pitágoras','MG');

SELECT * FROM tb_alunos;

---- Atividade 5
ALTER TABLE tb_alunos DROP COLUMN estado;
SELECT * FROM tb_alunos;

---- Atividade 6
ALTER TABLE tb_alunos ADD uf VARCHAR(2);
SELECT * FROM tb_alunos;

---- Atividade 7
UPDATE tb_alunos SET uf = 'SC' WHERE nome = 'Bruce Wayne';
UPDATE tb_alunos SET uf = 'SP' WHERE nome = 'Clark Kent';
SELECT * FROM tb_alunos;

---- Atividade 8
UPDATE tb_alunos SET uf = 'BH' WHERE nome = 'Adamastor Pitágoras';
SELECT * FROM tb_alunos;

---- Atividade 9
DELETE FROM tb_alunos WHERE nome = 'Clark Kent';
SELECT * FROM tb_alunos;

---- Atividade 10
INSERT INTO `tb_Alunos` (`codigo`,`nome`,`uf`)
VALUES
  (3,"Nelle Miles","RS"),
  (4,"Rhiannon Daniel","PR"),
  (5,"Demetria Mccullough","SC"),
  (6,"Francesca Williamson","MG"),
  (7,"Cade Marshall","RR"),
  (8,"Imogene Finch","TO"),
  (9,"Leslie Ramsey","RR"),
  (10,"Jaden Fields","PA"),
  (11,"April Hale","SC"),
  (12,"Cedric Good","RO"),
  (13,"Xandra Sharpe","RS"),
  (14,"Yvette Haynes","RO"),
  (15,"Jack Contreras","TO"),
  (16,"Kane Lindsay","RS"),
  (17,"Echo Lawson","PI"),
  (18,"Lila Witt","RO"),
  (19,"Dexter Moreno","PE"),
  (20,"Howard Gutierrez","SE"),
  (21,"Dylan Watson","MG"),
  (22,"Carolyn Osborn","SP");

INSERT INTO `tb_Alunos` (`codigo`,`nome`,`uf`)
VALUES
  (23,"Deacon Cummings","SC"),
  (24,"Galena William","RR"),
  (25,"Anthony Cole","SP"),
  (26,"Yoko Huffman","PB"),
  (27,"Christian Glenn","RO"),
  (28,"Garrett Barber","SP"),
  (29,"Lani Finch","TO"),
  (30,"Daniel Oneal","RS"),
  (31,"Skyler Blake","SE"),
  (32,"Rose Lindsey","PB"),
  (33,"Harrison Burns","MT"),
  (34,"Thaddeus Bruce","RR"),
  (35,"Sylvester Baxter","RJ"),
  (36,"MacKensie Lamb","PR"),
  (37,"Hakeem Vazquez","PB"),
  (38,"Brenden Riley","MG"),
  (39,"Jamal Franks","RO"),
  (40,"Cadman Clements","TO"),
  (41,"Hall Justice","RJ"),
  (42,"Scarlet Walker","PB");

INSERT INTO `tb_Alunos` (`codigo`,`nome`,`uf`)
VALUES
  (43,"Mallory Witt","PA"),
  (44,"Marsden Booth","RJ"),
  (45,"Sebastian Rios","RS"),
  (46,"Suki Caldwell","MG"),
  (47,"Quinn Murray","PB"),
  (48,"Iris Townsend","RO"),
  (49,"Emmanuel Griffin","RN"),
  (50,"Burke Jefferson","RN"),
  (51,"Samson Sellers","RS"),
  (52,"Steven Jacobs","SE"),
  (53,"Malcolm Wise","PA"),
  (54,"Anika Wilkins","RO"),
  (55,"Jamalia Parks","SE"),
  (56,"Dai Boyle","RO"),
  (57,"Fleur Hines","MT"),
  (58,"Bree Nichols","RS"),
  (59,"Ethan Cannon","RJ"),
  (60,"Alice Steele","RR"),
  (61,"Dylan Weber","RJ"),
  (62,"Zephania Mathis","RJ");

INSERT INTO `tb_Alunos` (`codigo`,`nome`,`uf`)
VALUES
  (63,"Cain Spence","SE"),
  (64,"Cally Conley","SE"),
  (65,"Jennifer Barber","PE"),
  (66,"Maryam Alvarado","RO"),
  (67,"Shaeleigh Guy","SC"),
  (68,"Stewart Bray","PR"),
  (69,"Nash Mckay","PE"),
  (70,"Gay Delaney","RJ"),
  (71,"Mona Garner","SE"),
  (72,"Gannon Curtis","RN"),
  (73,"Griffith Adkins","TO"),
  (74,"Veda Estrada","RN"),
  (75,"Rinah Humphrey","MT"),
  (76,"Chase Copeland","RS"),
  (77,"Dai Humphrey","RN"),
  (78,"Kibo Haley","SE"),
  (79,"Regan Spencer","RR"),
  (80,"Sophia Spears","TO"),
  (81,"Irma Allison","TO"),
  (82,"Alma Todd","SP");

INSERT INTO `tb_Alunos` (`codigo`,`nome`,`uf`)
VALUES
  (63,"Cain Spence","SE"),
  (64,"Cally Conley","SE"),
  (65,"Jennifer Barber","PE"),
  (66,"Maryam Alvarado","RO"),
  (67,"Shaeleigh Guy","SC"),
  (68,"Stewart Bray","PR"),
  (69,"Nash Mckay","PE"),
  (70,"Gay Delaney","RJ"),
  (71,"Mona Garner","SE"),
  (72,"Gannon Curtis","RN"),
  (73,"Griffith Adkins","TO"),
  (74,"Veda Estrada","RN"),
  (75,"Rinah Humphrey","MT"),
  (76,"Chase Copeland","RS"),
  (77,"Dai Humphrey","RN"),
  (78,"Kibo Haley","SE"),
  (79,"Regan Spencer","RR"),
  (80,"Sophia Spears","TO"),
  (81,"Irma Allison","TO"),
  (82,"Alma Todd","SP");

---- Atividade 11
SELECT * FROM tb_Alunos WHERE uf = 'PR';

---- Atividade 12
SELECT * FROM tb_Alunos WHERE codigo > 50;

---- Atividade 13
SELECT * FROM tb_Alunos WHERE codigo = 91;

---- Atividade 14
SELECT * FROM tb_Alunos WHERE codigo != 10;

---- Atividade 15
SELECT * FROM tb_Alunos 
WHERE codigo IN (10, 20, 30, 40, 50, 60, 70, 80, 90, 100);

---- Atividade 16
SELECT * FROM tb_Alunos 
WHERE uf IN ('SP', 'MG', 'RJ', 'ES') 
ORDER BY uf ASC;

---- Atividade 17
SELECT * FROM tb_Alunos LIMIT 10;

---- Atividade 18
DELETE FROM tb_Alunos WHERE codigo = 100;

---- Atividade 19
DROP TABLE tb_Alunos2