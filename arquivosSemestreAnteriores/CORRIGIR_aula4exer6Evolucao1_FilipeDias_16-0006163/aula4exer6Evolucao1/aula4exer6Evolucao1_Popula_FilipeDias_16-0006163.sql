-- --------     << aula4exer6_Popula >>     ------------------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ...........: 17/04/2018                              --
-- Autor(es) ..............: Filipe Dias Soares Lima                 --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: aula4exer6_Popula                       --
--                                                                   --
-- PROJETO => 01 Base de Dados                                       --
--         => 08 Tabelas                                             --
--                                                                   --
--                                                                   --
-- ----------------------------------------------------------------- --

USE aula4exer6evolucao1Fisico;

INSERT INTO categoria VALUES(17);
INSERT INTO categoria VALUES(22);

INSERT INTO modelo VALUES(199917);
INSERT INTO modelo VALUES(199822);

INSERT INTO veiculo VALUES("JID-6703", 2010, "9BWHE21JX24060960", "Prata", 17, 199917);
INSERT INTO veiculo VALUES("FED-1404", 2017, "9CXGF20IZ23051859", "Vermelho", 22, 199822);

INSERT INTO proprietario VALUES("Setor Industrial", "Gama", "DF", 04590615185, 19990817, 18, "Filipe Dias", "M", 04);
INSERT INTO proprietario VALUES("QNE 05", "Taguatinga", "DF", 57385920187, 19981222, 19, "Débora Vilela", "F", 14);

INSERT INTO agente VALUES(160006163, 20160425, 24, "Anderson Pereira");
INSERT INTO agente VALUES(170008762, 20170322, 13, "Kleber Nunes");

INSERT INTO lugar VALUES(24, "UnB - Brasília, DF, 70297-400", 40);
INSERT INTO lugar VALUES(27, "Brasília - DF, 70853-400", 60);

INSERT INTO infracao VALUES(10, now(), 20180410, 90, 150, 160006163, 24, 04590615185, "JID-6703");
INSERT INTO infracao VALUES(15, now(), 20180218, 80, 723, 170008762, 27, 57385920187, "FED-1404");

INSERT INTO telefone VALUES(983131691, 04590615185);
INSERT INTO telefone VALUES(981353609, 57385920187);
