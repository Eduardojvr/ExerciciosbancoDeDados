-- --------     << aula4extra1 >>     ------------------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
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

CREATE DATABASE if not exists aula4extra1;
USE aula4extra1;

CREATE TABLE ESTADO (
	sigla char(2) not null,
    nome varchar(20) not null,
    constraint ESTADO_PK primary key (sigla)
)engine=InnoDb;

CREATE TABLE CIDADE (
	codigo int(5) not null,
    nome varchar(50) not null,
	sigla char(2) not null,
    habitante bigint not null,
    constraint CIDADE_PK primary key (codigo),
    constraint CIDADE_ESTADO_FK foreign key (sigla) references ESTADO(sigla),
    constraint CIDADE_UQ unique (sigla, nome)
)engine=innoDb;
