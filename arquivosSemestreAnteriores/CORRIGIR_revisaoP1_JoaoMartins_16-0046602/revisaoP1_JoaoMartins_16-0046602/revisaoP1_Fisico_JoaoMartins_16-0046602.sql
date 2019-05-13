-- --------     <<        revisaoP1             >>      ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
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



CREATE DATABASE IF NOT EXISTS bdPhenix;

USE bdPhenix;

CREATE TABLE ENGENHEIRO
(
  nome varchar(30)     NOT NULL,
  crea varchar(8)      NOT NULL,
  formacao varchar(30) NOT NULL,
  constraint ENGENHEIRO_PK primary key (crea)
)Engine = innoDB;

create table CLIENTE
(
  nome varchar(30)        NOT NULL,
  areaAtuacao varchar(30) NOT NULL,
  cidade varchar(20)      NOT NULL,
  bairro varchar(30)      NOT NULL,
  rua varchar(30)         NOT NULL,
  cnpj numeric(11)        NOT NULL,
  constraint CLIENTE_PK primary key (cnpj)
)Engine = innoDB;

create table CONTRATO
(
  codigoContrato integer   NOT NULL AUTO_INCREMENT,
  codProjeto integer       NOT NULL,
  cnpj numeric(8)          NOT NULL,
  dataCriacao date         NOT NULL,
  valor numeric(8)         NOT NULL,
  constraint CONTRATO_PK primary key (codigoContrato),
  constraint CONTRATO_PROJ_FK foreign key (codProjeto) references PROJETO(codProjeto),
  constraint CONTRATO_CLIENTE_FK foreign key (nome) references CLIENTE(nome)
)Engine = innoDB AUTO_INCREMENT = 10;

create table PROJETO
(
  codProjeto integer       NOT NULL AUTO_INCREMENT,
  codigoContrato integer   NOT NULL,
  nomeProjeto varchar(30)  NOT NULL,
  constraint PROJETO_PK primary key (codProjeto),
  constraint PROJETO_FK foreign key (codigoContrato) references CONTRATO(codigoContrato)
)Engine = innoDB AUTO_INCREMENT = 1;

create table TELEFONES
(
  telefones numeric(10) NOT NULL,
  cnpj numeric(11)      NOT NULL,
  constraint TELEFONES_CLIENTE foreign key(cnpj) references CLIENTE(cnpj)
)Engine = innoDB;

create table DESENVOLVE
(
  valor_unitario numeric(8),
  crea varchar(8),
  codProjeto integer,
  constraint DEV_ENGENHEIRO foreign key(crea) references ENGENHEIRO (crea),
  constraint PROJETO_ENGENHEIRO foreign key(codProjeto) references PROJETO (codProjeto)
)Engine = innoDB;
