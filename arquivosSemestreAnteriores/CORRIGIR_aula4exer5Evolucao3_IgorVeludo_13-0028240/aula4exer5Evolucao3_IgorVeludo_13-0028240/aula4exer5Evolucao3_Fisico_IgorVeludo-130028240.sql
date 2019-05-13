-- --------          << aula4exer5 >>                		------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ...........: 10/04/2018                              --
-- Autor(es) ..............: Igor Veludo  --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: aula4exer5                              --
--                                                                   --
-- Data Ultima Alteracao ..: 10/04/2018                              --
--   => Criacao de nova tabela                                       --
--                                                                   --
-- PROJETO => 01 Base de Dados                                       --
--         => 04 Tabelas                                             --
--                                                   	               --
--                                                                   --
--                                                                   --
-- ----------------------------------------------------------------- --

CREATE DATABASE IF NOT EXISTS aula4exer5;
use aula4exer5;

CREATE TABLE MEDICO (
crm int not null,
nome varchar(50) not null,
especialidade varchar(50) not null,
CONSTRAINT MEDICO_PK PRIMARY KEY (crm) );

CREATE TABLE PACIENTE (
cpf bigint(11) not null,
nomeCompleto varchar(50) not null,
sexo varchar(1) not null,
dataNascimento varchar(10) not null,
CONSTRAINT PECIENTE_PK PRIMARY KEY (cpf)
);

CREATE TABLE RECEITA(
medicamento varchar(30) not null;
dataEmissao varchar(10) not null;
idReceita int not null,
crm int not null,
cpf bigint(11) not null,
CONSTRAINT RECEITA_PK PRIMARY KEY (idReceita),
CONSTRAINT RECEITA_PACIENTE_FK FOREIGN KEY(cpf) REFERENCES PACIENTE(cpf),
CONSTRAINT RECEITA_MEDICO_FK FOREIGN KEY(crm) REFERENCES MEDICO(crm)
);

CREATE TABLE consulta(
crm int not null.
cpf bigint(11) not null,
CONSTRAINT consulta_PACIENTE_FK FOREIGN KEY(cpf) REFERENCES PACIENTE(cpf),
CONSTRAINT consulta_MEDICO_FK FOREIGN KEY(crm) REFERENCES MEDICO(crm)
);