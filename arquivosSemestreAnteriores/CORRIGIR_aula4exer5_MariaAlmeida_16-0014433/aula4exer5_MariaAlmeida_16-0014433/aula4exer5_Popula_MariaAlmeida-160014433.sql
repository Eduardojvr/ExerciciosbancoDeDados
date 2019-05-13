-- --------          << aula4exer5 >>                		------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DML)                        --
--                                                                   --
-- Data Criacao ...........: 03/04/2018                              --
-- Autor(es) ..............: Maria Luiza Ferreira Assumpção Almeida  --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: aula4exer5                              --
--                                                                   --
-- Data Ultima Alteracao ..: 03/04/2018                              --
--   => Criacao de nova tabela                                       --
--   => Insercao de dados                                            --
--                                                                   --
-- PROJETO => 01 Base de Dados                                       --
--         => 08 Tabelas                                             --
--                                                   	              --
--                                                                   --
--                                                                   --
-- ----------------------------------------------------------------- --

USE aula4exer5;

INSERT INTO MEDICO VALUES(12345678910,'Maria Ferreira','00000000-0/BR','Cardiologia');
INSERT INTO MEDICO VALUES(12345667501,'Joana Almeida','12000000-0/BR','Pediatria');
INSERT INTO MEDICO VALUES(98765678910,'Joao Souza','01130000-0/BR','Dermatologista');

INSERT INTO PACIENTE VALUES(98765678911,'Luiz Rogrigues','M',30);
INSERT INTO PACIENTE VALUES(98765678964,'Leonardo Cruz','M',38);
INSERT INTO PACIENTE VALUES(34762378911,'Letícia Urach','F',19);

INSERT INTO ENDERECO VALUES('Rua 50','Gama','Brasília',10,71770020);
INSERT INTO ENDERECO VALUES('Rua 30','Ceilândia','Brasília',15,71778920);
INSERT INTO ENDERECO VALUES('Rua 52','Lago Sul','Brasília',3,71890020);

INSERT INTO possui VALUES(98765678964,71778920);
INSERT INTO possui VALUES(98765678911,71778920);
INSERT INTO possui VALUES(98765678964,71890020);

INSERT INTO CONSULTA VALUES('00000000-0/BR',98765678964,0);
INSERT INTO CONSULTA VALUES('12000000-0/BR',98765678911,1);
INSERT INTO CONSULTA VALUES('01130000-0/BR',98765678964,2);

INSERT INTO TELEFONE VALUES(98765678964,5561987861129);
INSERT INTO TELEFONE VALUES(98765678911,5561980861129);
INSERT INTO TELEFONE VALUES(34762378911,5561987161129);

INSERT INTO PRESCRICAO VALUES(0,0,'22/12/1990');
INSERT INTO PRESCRICAO VALUES(1,2,'23/10/1991');
INSERT INTO PRESCRICAO VALUES(2,3,'30/11/1995');

INSERT INTO MEDICAMENTO VALUES('Novalgina',0);
INSERT INTO MEDICAMENTO VALUES('Resfenol',2);
INSERT INTO MEDICAMENTO VALUES('Dipirona',3);
