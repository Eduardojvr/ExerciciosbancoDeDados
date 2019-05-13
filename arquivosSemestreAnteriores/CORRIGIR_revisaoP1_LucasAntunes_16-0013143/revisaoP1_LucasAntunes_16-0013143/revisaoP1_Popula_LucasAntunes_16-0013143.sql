-- --------            << revisaoP1 >>        ------------ --
--                                                         --
--                    SCRIPT DE POPULA (DML)               --
--                                                         --
-- Data Criacao ...........: 06/05/2018                    --
-- Autor(es) ..............: Lucas Penido Antunes          --
-- Banco de Dados .........: MySQL                         --
-- Banco de Dados(nome) ...: bdPhenix                      --
--                                                         --
-- Data Ultima Alteracao ..: 06/05/2018                    --
--   => Popular Base de dados                              --
--                                                         --
-- PROJETO => 01 Base de Dados                             --
--         => 05 Tabelas                                   --
--                                                         --
-- ------------------------------------------------------- --

USE bdPhenix;

INSERT INTO CLIENTE VALUES
(null, 'ORCestra', 'Software', 'Gama quadra 1'),
(null, 'Matriz', 'Energia', 'Gama quadra 2'),
(null, 'Zenit', 'Aeroespacial', 'Gama quadra 3');

INSERT INTO telefone VALUES
(1, 932141234),
(2, 994238715),
(3, 982348534);

INSERT INTO ENGENHEIRO VALUES
(1278346, 'Lucas', 'Software'),
(6125481, 'Maria', 'Software'),
(4612354, 'Laura', 'Aeroespacial'),
(4718432, 'Gustavo', 'Aeroespacial'),
(7813548, 'Mateus', 'Energia'),
(9827134, 'Luiza', 'Energia');

INSERT INTO PROJETO VALUES
(null, 1, '2018/03/30', 154132.40),
(null, 2, '2017/05/21', 982364.23),
(null, 3, '2015/10/03', 10879423.13);

INSERT INTO trabalha VALUES
(1, 1278346, 13500.99),
(1, 6125481, 14000.00),
(2, 7813548, 10439.99),
(2, 9827134, 10500.00),
(3, 4718432, 14300.00),
(3, 4612354, 14300.00);