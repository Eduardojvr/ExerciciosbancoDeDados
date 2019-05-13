-- --------     << bd2Phenix >>     ------------ --
--                                                         --
--                    SCRIPT DE CRIACAO (DML)              --
--                                                         --
-- Data Criacao ...........: 07/05/2018                    --
-- Autor(es) ..............: Gabriel Braga Mendes          --
-- Banco de Dados .........: MySQL                         --
-- Banco de Dados(nome) ...: bd2Phenix                     --
--                                                         --
--                                                         --
--                                                         --
--                                                         --
-- PROJETO => 01 Base de Dados                             --
--         => 06 Tabelas                                   --
--                                                         --
-- ------------------------------------------------------- --

USE bd2Phenix;

INSERT INTO CLIENTE VALUES(01234567890,'Joao Pedro','saude',null,'105','Asa Sul'),
                          (01234567000,'Eduardo','informatica',null,'205','Asa Norte'),
                          (01234567111,'Maria','contabilidade','12','35','Guara 2');

INSERT INTO TELEFONE VALUES(61998979695,01234567890),
						   (61982828384,01234567000),
						   (61993948786,01234567111);

INSERT INTO PROJETO(descricaoProjeto) VALUES('Laboratorio'),
											('Servidores'),
											('Softwares');

INSERT INTO ATIVIDADE VALUES(01234567890,1,100000.00,'2018-01-05'),
							(01234567000,2,550000.00,'2017-10-05'),
							(01234567111,3,20000.00,'2016-11-07');

INSERT INTO ENGENHEIRO VALUES('Engenheiro Biomedico','Pedro Souza',1010101),
							 ('Engenheira da Computação','Luiza Costa',5656567),
							 ('Engenheiro de Software','Gabriel Braga',4321671);

INSERT INTO TRABALHA VALUES(10000.00,1010101,1),
						   (15000.00,5656567,2),
						   (20000.00,4321671,3);							 																							  