-- --------          << aula4exer5 >>                		------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DML)                        --
--                                                                   --
-- Data Criacao ...........: 10/04/2018                              --
-- Autor(es) ..............: Igor Guimarães Veludo		     --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: aula4exer5                              --
--                                                                   --
-- Data Ultima Alteracao ..: 10/04/2018                              --
--   => Criacao de nova tabela                                       --
--   => Insercao de dados                                            --
--                                                                   --
-- PROJETO => 01 Base de Dados                                       --
--         => 04 Tabelas                                             --
--                                                   	             --
--                                                                   --
--                                                                   --
-- ----------------------------------------------------------------- --

USE aula4exer5;

INSERT INTO MEDICO VALUES(12345678910,'Maria Ferreira','Cardiologia');
INSERT INTO MEDICO VALUES(55112233441,'José Sarmento','Endocrinologia');
INSERT INTO MEDICO VALUES(11122233344,'João Henrique','Ortopedia');

INSERT INTO PACIENTE VALUES(04278189150,'30','Veludo Igor',M);
INSERT INTO PACIENTE VALUES(77755511190,'43','Rodrigues Velasquez',M);
INSERT INTO PACIENTE VALUES(98765678911,'Maria Roraima','22',F);

INSERT INTO RECEITA VALUES('Dipirona','13/08/1995', 4, 30, 04278189150);
INSERT INTO RECEITA VALUES('Dorflex','05/12/2015', 7, 44, 22710030072);
INSERT INTO RECEITA VALUES('Nimesulida','21/04/2000', 22, 3, 04278189150);

INSERT INTO consulta VALUES(12, 04278189150);
INSERT INTO consulta VALUES(21, 22710030072);
INSERT INTO consulta VALUES(11, 77711122278);