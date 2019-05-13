-- --------     <<        revisaoP1             >>      ------------ --
--                                                                   --
--                    SCRIPT DE POPULAÇÃO (DML)                        --
--                                                                   --
-- Data Criacao ...........: 05/05/2018                              --
-- Autor(es) ..............: João Pedro de Aquino                    --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: bdPhenix                              --
--                                                                   --
-- Data Ultima Alteracao ..: 05/05/2018                              --
--   => Criação das tabelas                                          --
--                                                                   --
-- PROJETO => 01 Base de Dados                                       --
--         => 06 Tabelas                                             --
--                                                                   --
-- ----------------------------------------------------------------- --

use bdPhenix;

insert into ENGENHEIRO values
('Oswaldo', '0191892', 'Engenharia Civil'),
('Michel Temer', '01020135', 'Engenharia Elétrica'),
('Luis Inacio', '031546', 'Engenharia Mecânica');

insert into CLIENTE values
('Clinica Maria', 'Saúde', 'Brasília', 'Asa Norte', 'W3', '39752873'),
('Construtora Oswaldo', 'Construcao', 'Brasília', 'Asa Norte', 'W3', '55589631'),
('Bar Ril', 'Comércio', 'Brasília', 'Asa Sul', 'L2', '66698478');

insert into CONTRATO values
(1, 1, '39752873', '2005-06-07', 2000000),
(2, 2, '55589631', '2010-08-12', 1000000),
(3, 3, '66698478', '2018-05-06', 500000);

insert into PROJETO values
(1,1, 'Reforma consultorios'),
(2,2, 'Eficiencia elétrica'),
(3,3, 'Controle de vendas');

insert into TELEFONES values
(6196179333, '39752873'),
(6196180228, '55589631'),
(6196741034, '66698478');

insert into DESENVOLVE values
(10000, '0191892', 1),
(1500000, '01020135', 2),
(40000, '031546', 3);