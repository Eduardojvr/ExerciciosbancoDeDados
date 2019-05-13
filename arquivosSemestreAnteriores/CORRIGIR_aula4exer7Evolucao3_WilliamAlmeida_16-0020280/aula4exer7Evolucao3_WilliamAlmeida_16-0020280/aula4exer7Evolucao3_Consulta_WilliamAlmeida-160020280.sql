-- --------     << aula4exer7Evolucao3 >>     ------------ --
--                                                                   --
--                    SCRIPT DE CONSULTA (DML)                        --
--                                                                   --
-- Data Criacao ...........: 08/05/2018                              --
-- Autor(es) ..............: William Silva de Almeida                --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: aula4exer7Evolucao3                    --
--                                                                   --
-- Data Ultima Alteracao ..: 08/05/2018                              --
--                                        			--
--                                                                   --
-- PROJETO => 01 Base de Dados                                        --
--         => 06 Tabelas                                              --
--                                                                    --
-- ----------------------------------------------------------------- --
USE aula4exer7Evolucao3;

SELECT nome, EMPREGADO.matriculaFuncionario, cargaHoraria
  FROM EMPREGADO
       JOIN TRABALHO WHERE EMPREGADO.matriculaFuncionario = TRABALHO.matriculaFuncionario;
