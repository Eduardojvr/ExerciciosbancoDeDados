-- --------     << bd2Phenix >>     ------------ --
--                                                         --
--                    SCRIPT DE CRIACAO (DDL)              --
--                                                         --
-- Data Criacao ...........: 07/05/2018                    --
-- Autor(es) ..............: Gabriel Braga Mendes          --
-- Banco de Dados .........: MySQL                         --
-- Banco de Dados(nome) ...: bd2Phenix                     --
--                                                         --
--                                                         --
--                                                         --
--                                                         --
-- PROJETO => 01 Base de Dados                             --
--         => 06 Tabelas                                   --
--                                                         --
-- ------------------------------------------------------- --

CREATE DATABASE IF NOT EXISTS bd2Phenix;

USE bd2Phenix;

CREATE TABLE IF NOT EXISTS CLIENTE (
cpf bigint(11) NOT NULL,
nomeCliente varchar(50) NOT NULL,
areaAtuacao varchar(50) NOT NULL,
rua varchar(50),
numero int(4) NOT NULL,
bairro varchar(50) NOT NULL,
CONSTRAINT CLIENTE_PK PRIMARY KEY(cpf)
)Engine = Innodb;

CREATE TABLE IF NOT EXISTS TELEFONE (
telefone bigint NOT NULL,
cpf bigint(11) NOT NULL,
CONSTRAINT TELEFONE_FK FOREIGN KEY(cpf) REFERENCES CLIENTE (cpf)
)Engine = Innodb;

CREATE TABLE IF NOT EXISTS PROJETO (
descricaoProjeto varchar(50) NOT NULL,
idProjeto int(8) NOT NULL AUTO_INCREMENT,
CONSTRAINT PROJETO_PK PRIMARY KEY (idProjeto)
)Engine = Innodb AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS ATIVIDADE (
cpf bigint(11) NOT NULL,
idProjeto int(8) NOT NULL,
valorContratacao decimal(8,2) NOT NULL,
dtContratacao date NOT NULL,
CONSTRAINT ATIVIDADE_PK PRIMARY KEY(cpf,idProjeto),
CONSTRAINT ATIVIDADE_CLIENTE_FK FOREIGN KEY(cpf) REFERENCES CLIENTE (cpf),
CONSTRAINT ATIVIDADE_PROJETO_FK FOREIGN KEY(idProjeto) REFERENCES PROJETO (idProjeto)
)Engine = Innodb;

CREATE TABLE IF NOT EXISTS ENGENHEIRO (
formacao varchar(50) NOT NULL,
nome varchar(50) NOT NULL,
crea int(7) NOT NULL,
CONSTRAINT ENGENHEIRO_PK PRIMARY KEY(crea)
)Engine = Innodb;

CREATE TABLE IF NOT EXISTS TRABALHA (
valorUnitario decimal(8,2) NOT NULL,
crea int(7) NOT NULL,
idProjeto int(8) NOT NULL,
CONSTRAINT TRABALHA_FK FOREIGN KEY(crea) REFERENCES ENGENHEIRO (crea)
)Engine = Innodb;