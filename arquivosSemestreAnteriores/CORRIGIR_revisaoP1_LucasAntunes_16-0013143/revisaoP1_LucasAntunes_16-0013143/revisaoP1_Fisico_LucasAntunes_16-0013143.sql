-- --------           << revisaoP1 >>         ------------ --
--                                                         --
--                    SCRIPT DE CRIACAO (DDL)              --
--                                                         --
-- Data Criacao ...........: 06/05/2018                    --
-- Autor(es) ..............: Lucas Penido Antunes          --
-- Banco de Dados .........: MySQL                         --
-- Banco de Dados(nome) ...: bdPhenix                      --
--                                                         --
-- Data Ultima Alteracao ..: 06/05/2018                    --
--   => Criacao de nova tabela                             --
--                                                         --
-- PROJETO => 01 Base de Dados                             --
--         => 05 Tabelas                                   --
--                                                         --
-- ------------------------------------------------------- --

CREATE DATABASE IF NOT EXISTS bdPhenix;

USE bdPhenix;

CREATE TABLE IF NOT EXISTS CLIENTE (
idCliente     int(5)      NOT NULL AUTO_INCREMENT,
nome          varchar(30) NOT NULL,
areaAtuacao   varchar(30) NOT NULL,
enderecoSede  varchar(50) NOT NULL,
CONSTRAINT CLIENTE_PK PRIMARY KEY (idCliente)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS telefone (
idCliente   int(5)     NOT NULL,
telefone    numeric(9) NOT NULL,
CONSTRAINT telefone_CLIENTE_FK FOREIGN KEY(idCliente) REFERENCES CLIENTE (idCliente)
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS ENGENHEIRO (
crea     numeric(7)  NOT NULL,
nome     varchar(30) NOT NULL,
formacao varchar(30) NOT NULL,
CONSTRAINT ENGENHEIRO_PK PRIMARY KEY (crea)
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS PROJETO (
cdProjeto     int(5)        NOT NULL AUTO_INCREMENT,
idCliente     int(5)        NOT NULL,
dtContratacao date          NOT NULL,
valorContrato decimal(11,2) NOT NULL,
CONSTRAINT PROJETO_PK PRIMARY KEY (cdProjeto),
CONSTRAINT PROJETO_CLIENTE_FK FOREIGN KEY(idCliente) REFERENCES CLIENTE (idCliente)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS trabalha (
cdProjeto       int(5)       NOT NULL,
crea            numeric(7)   NOT NULL,
valorEngenheiro decimal(8,2) NOT NULL,
CONSTRAINT trabalha_PROJETO_FK FOREIGN KEY(cdProjeto) REFERENCES PROJETO (cdProjeto),
CONSTRAINT trabalha_ENGENHEIRO FOREIGN KEY(crea) REFERENCES ENGENHEIRO (crea)
)ENGINE = InnoDB;
