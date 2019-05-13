-- --------     << aula4exer6Evolucao2 >>     ------------ --
--                                                         --
--                    SCRIPT DE INSERÇÃO (DML)             --
--                                                         --
-- Data Criacao ...........: 21/04/2018                    --
-- Autor(es) ..............: Gabriel Braga Mendes          --
-- Banco de Dados .........: MySQL                         --
-- Banco de Dados(nome) ...: aula4exer6Evolucao2           --
--                                                         --
--                                                         --
-- PROJETO => 01 Base de Dados                             --
--         => 09 Tabelas                                   --
--                                                         --
-- ------------------------------------------------------- --


USE aula4Exer6Evolucao2;

INSERT INTO PESSOA VALUES('00000000001','Douglas de Melo','masculino',null,'Brasilia','Distrito Federal','1996-08-12');
INSERT INTO PESSOA VALUES('00000000010','Luciana Souza','feminino',null,'Taguatinga','Distrito Federal','2000-02-15');
INSERT INTO PESSOA VALUES('00000000100','Maria Antonia Costa','feminino',null,'Brasilia','Distrito Federal','1990-07-09');

INSERT INTO Telefone VALUES('61982828887','00000000001');
INSERT INTO Telefone VALUES('61996228873','00000000010');
INSERT INTO Telefone VALUES('61982879903','00000000100');

INSERT INTO CATEGORIA VALUES('01','AUTOMOVEL');
INSERT INTO CATEGORIA VALUES('02','MOTOCICLETA');
INSERT INTO CATEGORIA VALUES('03','CAMINHAO');

INSERT INTO MODELO VALUES('01','GOL MI');
INSERT INTO MODELO VALUES('02','GOL 1.8');
INSERT INTO MODELO VALUES('03','UNO CS');

INSERT INTO VEICULO VALUES('jab-4342','19922334xna9','Cinza','2013','00000000001','01','02');
INSERT INTO VEICULO VALUES('jst-1000','32134643acd1','Preto','2010','00000000010','02','01');
INSERT INTO VEICULO VALUES('jot-0090','12156723wcv0','Azul','1999','00000000100','03','03');

INSERT INTO LOCAL VALUES('001','80','0,0');
INSERT INTO LOCAL VALUES('002','60','0,1');
INSERT INTO LOCAL VALUES('003','40','1,1');

INSERT INTO AGENTE VALUES('0000000001','Julio Cesar Gomes','2017-12-10','4');
INSERT INTO AGENTE VALUES('0000000010','Paulo Araujo','2016-12-10','16');
INSERT INTO AGENTE VALUES('0000000100','Antonia de Paula','2018-03-10','1');

INSERT INTO TIPOINFRACAO VALUES('Velocidade','2000','01');
INSERT INTO TIPOINFRACAO VALUES('Dirigir apos consumir alcool','1000','02');
INSERT INTO TIPOINFRACAO VALUES('Estacionar em local proibido','1500','03');

INSERT INTO INFRACAO VALUES('2018-01-10 10:30:02','140','000000000000001','01','0000000001','001','jab-4342');
INSERT INTO INFRACAO VALUES('2017-02-11 00:38:12','60','000000000000002','02','0000000010','002','jst-1000');
INSERT INTO INFRACAO VALUES('2018-03-18 15:57:10','30','000000000000003','03','0000000100','003','jot-0090');