-- --------            aula4exer5evolucao1              ------------ --
--                                                                   --
--                    SCRIPT DE REMOCAO (DDL)                        --
--                                                                   --
-- Data Criacao ...........: 15/04/2018                              --
-- Autor(es) ..............: João Pedro Gomes                    --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: aula4exer6                     --
--                                                                   --
-- Data Ultima Alteracao ..:                                         --
-- Autor(es) ..............:                                         --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 9 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --

-- === USANDO BASE DE DADOS ===
 use aula4exer6;

-- === APAGANDO TODAS TABELAS DO PROJETO ===
 drop table AGENTETRANSITO; 
 drop table CATEGORIA;
 drop table INFRACAO;
 drop table LOCALINFRACAO;
 drop table MODELO; 
 drop table PROPRIETARIO; 
 drop table TELEFONE;
 drop table TIPOINFRACAO; 
 drop table VEICULO;