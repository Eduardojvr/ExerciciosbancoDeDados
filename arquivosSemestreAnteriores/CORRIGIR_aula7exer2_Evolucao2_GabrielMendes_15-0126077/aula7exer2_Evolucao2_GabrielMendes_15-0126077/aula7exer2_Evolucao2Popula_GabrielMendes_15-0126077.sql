-- --------     << aula7exer2_Evolucao2 >>     ------------ --
--                                                         --
--                    SCRIPT DE INSERCAO(DML)	           --
--                                                         --
-- Data Criacao ...........: 07/06/2018                    --
-- Autor(es) ..............: Gabriel Braga Mendes          --
-- Banco de Dados .........: MySQL                         --
-- Banco de Dados(nome) ...: aula7exer2_Evolucao2          --
--                                                         --
--                                                         --
-- PROJETO => 01 Base de Dados                             --
--         => 08 Tabelas                                   --
--                                                         --
-- ------------------------------------------------------- --

USE aula7exer2_Evolucao2;

INSERT INTO FABRICANTE VALUES(0000000001,'Jequiti','R',12,'Guara 1','DF','Brasilia'),
							 (0000000002,'NeoQuimica','A',23,'Guara 2','DF','Brasilia'),
							 (0000000003,'Medley','J',54,'Guara 2','DF','Brasilia');
                             
INSERT INTO TELEFONE VALUES(61982878287,0000000001),
						   (61993949293,0000000002),
						   (61987878485,0000000003);
                           
INSERT INTO PRODUTO VALUES(1,'Vidro',10,150.00,'Ferrari',0000000001),
						  (2,'Plastico',20,100.00,'Paracetamol',0000000003),
					      (3,'Vidro',30,50.00,'Jequiti',0000000001),
                          (4,'Vidro',20,300.00,'One Milion',0000000001),
                          (5,'Plastico',20,100.00,'Ritalina',0000000002),
                          (6,'Plastico',20,100.00,'Amoxicilina',0000000003);
                          
INSERT INTO MEDICAMENTO VALUES('C8H9NO2','Amarela',2),
							  ('C14H19NO2','Preta',5),
                              ('C16H19N305S','Vermelha',6);
                              
INSERT INTO PERFUME VALUES('Masculino','Ferrari',1),
                          ('Feminino','Jequiti',3),
                          ('Masculino','One Milion',4);
                          
INSERT INTO VENDA VALUES(1,'2018-01-02','Joao','10.00'),
						(2,'2018-02-01','Maria','10.00'),
                        (3,'2018-03-04','Jose','10.00');
                        
INSERT INTO ITEM VALUES(1,3,1,2),
                       (2,4,2,5),
                       (3,5,3,6);
                       
INSERT INTO RECEITA VALUES(0000000001,'2018-01-01',1,1),
						  (0000000002,'2018-02-01',2,2),
                          (0000000003,'2018-03-01',3,3);
                          
