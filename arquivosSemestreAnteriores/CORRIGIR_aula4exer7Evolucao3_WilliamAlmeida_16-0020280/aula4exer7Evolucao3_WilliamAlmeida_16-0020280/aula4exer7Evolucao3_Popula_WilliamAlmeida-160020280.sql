-- --------     << aula4exer7Evolucao2 >>     ------------ --
--                                                                   --
--                    SCRIPT DE INSERÇÃO (DML)                        --
--                                                                   --
-- Data Criacao ...........: 08/05/2018                               --
-- Autor(es) ..............: William Silva de Almeida                --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: aula4exer7Evolucao3                    --
--                                                                   --
-- Data Ultima Alteracao ..: 08/05/2018                               --
--   => Inserção de dados                                      --
--                                                                   --
-- PROJETO => 01 Base de Dados                                        --
--         => 06 Tabelas                                              --
--                                                                    --
-- ----------------------------------------------------------------- --
USE aula4exer7Evolucao3;

INSERT INTO EMPREGADO (matriculaFuncionario, sexo, dataNascimento, bairro, numero, rua, salario, nome) VALUES 
(null, 'M', '1980-03-03', 'Aguas Claras', 13, 'Freitas', 10000.50, 'Jose'),
(null, 'F', '1970-04-05', 'Asa Sul', 150, '2', 900.00, 'Maria'),
(null, 'M', '1960-03-02', 'Asa Norte', 8, '400', 1500.50, 'Jose')
;

UPDATE EMPREGADO SET matriculaSupervisor = 2 WHERE matriculaFuncionario = 1;
UPDATE EMPREGADO SET matriculaSupervisor = 3 WHERE matriculaFuncionario = 2;
UPDATE EMPREGADO SET matriculaSupervisor = 1 WHERE matriculaFuncionario = 3;


INSERT INTO DEPENDENTE VALUES(1, 'Jose', 'M', '2005-05-05', 'filho');
INSERT INTO DEPENDENTE VALUES(2, 'Jose', 'M', '2000-09-10', 'filho');
INSERT INTO DEPENDENTE VALUES(3, 'Maria', 'F', '2005-02-10', 'filha');

INSERT INTO DEPARTAMENTO VALUES(null, 3, 'Financas', '2010-05-05');
INSERT INTO DEPARTAMENTO VALUES(null, 2, 'RH', '2017-01-01');
INSERT INTO DEPARTAMENTO VALUES(null, 1, 'Inovacao', '2018-03-03');

UPDATE EMPREGADO SET codigoDepartamento = 3 WHERE matriculaFuncionario = 1;
UPDATE EMPREGADO SET codigoDepartamento = 2 WHERE matriculaFuncionario = 2;
UPDATE EMPREGADO SET codigoDepartamento = 1 WHERE matriculaFuncionario = 3;


INSERT INTO LOCALIZACAO VALUES(1, 'Primeiro Piso');
INSERT INTO LOCALIZACAO VALUES(2, 'Segundo Piso');
INSERT INTO LOCALIZACAO VALUES(3, 'Terceiro Piso');

INSERT INTO PROJETO VALUES('ALFA', 'Galpao 4', null, 1);
INSERT INTO PROJETO VALUES('BETA', 'Galpao 5', null, 2);
INSERT INTO PROJETO VALUES('GAMA', 'Galpao 6', null, 3);

INSERT INTO TRABALHO VALUES('8:00', 1, 1);
INSERT INTO TRABALHO VALUES('8:00', 2, 2);
INSERT INTO TRABALHO VALUES('8:00', 3, 3);

