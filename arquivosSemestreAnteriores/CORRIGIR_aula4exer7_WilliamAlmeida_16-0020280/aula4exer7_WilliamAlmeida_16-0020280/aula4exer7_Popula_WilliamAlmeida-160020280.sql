-- --------         << aula4exer7 >>          ------------ --
--                                                         --
--                SCRIPT DE POPULA (DML)                   --
--                                                         --
-- Data Criacao ...........: 24/04/2018                    --
-- Autor(es) ..............: William Silva de Almeida      --
-- Banco de Dados .........: MySQL                         --
-- Banco de Dados(nome) ...: aula4exer7                    --
--                                                         --
-- PROJETO => 01 Base de Dados                             --
--         => 09 Tabelas                                   --
--                                                         --
-- ------------------------------------------------------- --


USE aula4exer7;

INSERT INTO EMPREGADO VALUES(null, 'M', '1980-03-03', 'Aguas Claras', 13, 'Freitas', 10000.50, 'Jose', 1);
INSERT INTO EMPREGADO VALUES(null, 'F', '1970-04-05', 'Asa Sul', 150, '2', 900.00, 'Maria', 1);
INSERT INTO EMPREGADO VALUES(null, 'M', '1960-03-02', 'Asa Norte', 8, '400', 1500.50, 'Jose', 1);
INSERT INTO EMPREGADO VALUES(null, 'F', '1990-06-02', 'Asa Norte', 9, '400', 1600.50, 'Maria', 2);
INSERT INTO EMPREGADO VALUES(null, 'M', '1991-07-02', 'Asa Norte', 10, '400', 1700.00, 'Jose', 2);
INSERT INTO EMPREGADO VALUES(null, 'F', '1992-08-02', 'Asa Norte', 11, '400', 1800.50, 'Maria', 2);
INSERT INTO EMPREGADO VALUES(null, 'M', '1993-09-02', 'Asa Norte', 12, '400', 1900.50, 'Jose', 3);
INSERT INTO EMPREGADO VALUES(null, 'F', '1994-10-02', 'Asa Norte', 13, '400', 2000.50, 'Maria', 3);
INSERT INTO EMPREGADO VALUES(null, 'M', '1995-11-02', 'Asa Norte', 14, '400', 2100.50, 'Jose', 3);

INSERT INTO SUPERVISOR VALUES(4, '2010-05-06');
INSERT INTO SUPERVISOR VALUES(5, '2011-06-06');
INSERT INTO SUPERVISOR VALUES(6, '2012-07-06');

INSERT INTO GERENTE VALUES(7, '2013-05-06');
INSERT INTO GERENTE VALUES(8, '2014-04-06');
INSERT INTO GERENTE VALUES(9, '2015-03-06');

INSERT INTO DEPENDENTE VALUES(1, 'Jose', 'M', '2005-05-05', 'filho');
INSERT INTO DEPENDENTE VALUES(2, 'Jose', 'M', '2000-09-10', 'filho');
INSERT INTO DEPENDENTE VALUES(3, 'Maria', 'F', '2005-02-10', 'filha');

INSERT INTO SUPERVISAO VALUES('8:00', 4, 1);
INSERT INTO SUPERVISAO VALUES('8:00', 5, 2);
INSERT INTO SUPERVISAO VALUES('8:00', 6, 3);

INSERT INTO DEPARTAMENTO VALUES(null, 7, 'Financas');
INSERT INTO DEPARTAMENTO VALUES(null, 8, 'RH');
INSERT INTO DEPARTAMENTO VALUES(null, 9, 'Inovacao');

INSERT INTO LOCALIZACAO VALUES(1, 'Primeiro Piso');
INSERT INTO LOCALIZACAO VALUES(2, 'Segundo Piso');
INSERT INTO LOCALIZACAO VALUES(2, 'Terceiro Piso');

INSERT INTO PROJETO VALUES('ALFA', 'Galpao 4', null, 1);
INSERT INTO PROJETO VALUES('BETA', 'Galpao 5', null, 2);
INSERT INTO PROJETO VALUES('GAMA', 'Galpao 6', null, 3);

INSERT INTO TRABALHO VALUES('8:00', 1, 1);
INSERT INTO TRABALHO VALUES('8:00', 2, 2);
INSERT INTO TRABALHO VALUES('8:00', 3, 3);
