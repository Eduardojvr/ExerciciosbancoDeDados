-- --------     << aula4exer7Evolucao3 >>     ------------ --
--                                                                   --
--                    SCRIPT DE REMOÇÃO (DDL)                        --
--                                                                   --
-- Data Criacao ...........: 08/05/2018                              --
-- Autor(es) ..............: William Silva de Almeida                --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: aula4exer7Evolucao3                    --
--                                                                   --
-- Data Ultima Alteracao ..: 08/05/2018                               --
--   => Remoção das tabelas                                      --
--                                                                   --
-- PROJETO => 01 Base de Dados                                        --
--         => 06 Tabelas                                              --
--                                                                    --
-- ----------------------------------------------------------------- --
USE aula4exer7Evolucao3;

DROP TABLE TRABALHO;
DROP TABLE DEPENDENTE;
DROP TABLE LOCALIZACAO;
DROP TABLE PROJETO;
ALTER TABLE EMPREGADO DROP FOREIGN KEY EMPREGADO_DEPARTAMENTO_FK;
DROP TABLE DEPARTAMENTO;
DROP TABLE EMPREGADO;

