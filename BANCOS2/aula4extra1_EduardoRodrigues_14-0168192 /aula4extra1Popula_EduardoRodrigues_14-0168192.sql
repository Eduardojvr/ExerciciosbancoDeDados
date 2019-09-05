-- --------     << aula4extra1 >>     ------------------------ --
--                                                                   --
--                    SCRIPT DE MANIPULACAO (DML)                        --
--                                                                   --
-- Data Criacao ...........: 04/09/2019                              --
-- Autor(es) ..............: Eduardo Júnio Veloso Rodrigues              --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: aula4extra1                       --
--                                                                   --
-- PROJETO => 01 Base de Dados                                       --
--         => 02 Tabelas                                             --
--                                                                   --
--                                                                   --
-- ----------------------------------------------------------------- --

USE aula4extra1;

insert into ESTADO 
values 	('DF', 'Distrito Federal'), 
		('SP', 'São Paulo'),
        ('RJ', 'Rio de Janeiro'),
        ('GO', 'Goias');

insert into CIDADE
values 	('123', 'Taguatinga', 'DF', '221909'),
		('234', 'Santos', 'SP', '433966'),
		('345', 'Arraial do Cabo', 'RJ','28866'),
        ('567', 'Goiânia', 'GO', '1300000');