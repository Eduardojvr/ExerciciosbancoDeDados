-- --------          << aula4exer5 >>                		------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ...........: 03/04/2018                              --
-- Autor(es) ..............: Maria Luiza Ferreira Assumpção Almeida  --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: aula4exer5                              --
--                                                                   --
-- Data Ultima Alteracao ..: 03/04/2018                              --
--   => Criacao de nova tabela                                       --
--                                                                   --
-- PROJETO => 01 Base de Dados                                       --
--         => 08 Tabelas                                             --
--                                                   	               --
--                                                                   --
--                                                                   --
-- ----------------------------------------------------------------- --

CREATE DATABASE aula4exer5;
USE aula4exer5;

CREATE TABLE MEDICO(
     cpf numeric(11) NOT NULL,
     nomeCompleto varchar(50) NOT NULL,
     crm varchar(30) NOT NULL,
     especialidade varchar(30) NOT NULL,
     constraint MEDICO_PK primary key(crm)
);

CREATE TABLE PACIENTE(
     cpf numeric(11) NOT NULL,
     nomeCompleto varchar(50) NOT NULL,
     sexo varchar(1) NOT NULL,
     idade integer(1) NOT NULL,
     constraint PACIENTE_PK primary key(cpf)
);

CREATE TABLE TELEFONE(
  cpf numeric(11) NOT NULL,
  telefone numeric(13),
  constraint TELEFONE_PACIENTE_FK foreign key(cpf) references PACIENTE(cpf)
);

CREATE TABLE ENDERECO(
  rua varchar(30) NOT NULL,
  bairro varchar(30) NOT NULL,
  cidade varchar(30) NOT NULL,
  numero integer(1) NOT NULL,
  cep integer(8) NOT NULL,
  constraint ENDERECO_PK primary key(cep)
);

CREATE TABLE possui(
  cpf numeric(11) NOT NULL,
  cep integer(8) NOT NULL,
  constraint PACIENTE_ENDERECO_FK foreign key(cpf) references PACIENTE(cpf),
  constraint ENDERECO_PACIENTE_FK foreign key(cep) references ENDERECO(cep)
);

CREATE TABLE CONSULTA(
     crm varchar(30) NOT NULL,
     cpf numeric(11) NOT NULL,
     idConsulta integer(10),
     constraint CONSULTA_PK primary key(idConsulta),
     constraint CONSULTA_MEDICO_FK foreign key(crm) references MEDICO(crm),
     constraint CONSULTA_PACIENTE_FK foreign key(cpf) references PACIENTE(cpf)
);

CREATE TABLE PRESCRICAO(
     idConsulta integer(10) NOT NULL,
     idPrescricao integer(10) NOT NULL,
     dataEmissao varchar(10) NOT NULL,
     constraint PRESCRICAO_PK primary key(idPrescricao),
     constraint PRESCRICAO_CONSULTA_FK foreign key(idConsulta) references CONSULTA(idConsulta)
);

CREATE TABLE MEDICAMENTO(
  medicamento varchar(30) NOT NULL,
  idPrescricao integer(10) NOT NULL,
  constraint MEDICAMENTO_PRESCRICAO_FK foreign key(idPrescricao) references PRESCRICAO(idPrescricao)
);
