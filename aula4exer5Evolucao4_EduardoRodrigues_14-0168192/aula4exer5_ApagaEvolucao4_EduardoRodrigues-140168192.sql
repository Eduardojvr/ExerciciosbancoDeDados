-- --------     << aula4exer5Evolucao4 >>     ------------
-- 
--              SCRIPT PARA DELEÇÃO DE DADOS DAS TABELAS DA BASE DE DADOS
-- 
-- Data Criacao ...........: 29/04/2019
-- Autor(es) ..............: Eduardo Júnio Veloso Rodrigues
-- Banco de Dados .........: MySQL
-- Base de dados(nome) ...: aula4exer6evolucao3
-- 
-- Data Ultima Alteracao ..: 29/04/2019
--   => Comandos para deleção de dados nas tabels da base de dados
-- -----------------------------------------------------------------

use aula4exer5Evolucao4;

-- Apaga apenas os dados das tabelas
delete from contem;
delete from possui;
delete from MEDICAMENTO;
delete from RECEITA;
delete from CONSULTA;
delete from telefone;
delete from PACIENTE;
delete from ESPECIALIDADE;
delete from MEDICO;


-- Apaga as tabelas sem apagar a base de dados
drop table contem;
drop table possui;
drop table MEDICAMENTO;
drop table RECEITA;
drop table CONSULTA;
drop table telefone;
drop table PACIENTE;
drop table ESPECIALIDADE;
drop table MEDICO;
