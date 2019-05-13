-- --------     << aula7exer2 >>     ------------ --
--                                                         --
--                    SCRIPT DE CRIACAO(DDL)	           --
--                                                         --
-- Data Criacao ...........: 29/05/2018                    --
-- Autor(es) ..............: Andrew Lucas Guedes de Souza  --
-- Banco de Dados .........: MySQL                         --
-- Banco de Dados(nome) ...: aula7exer2             --
--                                                         --
--                                                         --
-- PROJETO => 01 Base de Dados                             --
--         => 07 Tabelas                                   --
--                                                         --
-- ------------------------------------------------------- --

CREATE DATABASE IF NOT EXISTS aula7exer2
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE aula7exer2;

CREATE TABLE FABRICANTE (
cgc NUMERIC(10) NOT NULL,
nome VARCHAR(30) NOT NULL,
rua VARCHAR(30) NOT NULL,
numero NUMERIC(4) NOT NULL,
bairro VARCHAR(30) NOT NULL,
cidade VARCHAR(30) NOT NULL,
estado VARCHAR(30) NOT NULL,
CONSTRAINT FABRICANTE_PK PRIMARY KEY(cgc)
);

CREATE TABLE telefone (
telefone NUMERIC(13) NOT NULL,
cgc NUMERIC(10) NOT NULL,
CONSTRAINT TELEFONE_FABRICANTE_FK FOREIGN KEY(cgc) REFERENCES FABRICANTE (cgc)
);

CREATE TABLE PRODUTO (
codigoProduto NUMERIC(10) NOT NULL,
nome VARCHAR(30) NOT NULL,
tipoEmbalagem VARCHAR(30) NOT NULL,
quantidade NUMERIC(4) NOT NULL,
precoUnitario DECIMAL(7,2) NOT NULL,
cgc NUMERIC(10) NOT NULL,
CONSTRAINT PRODUTO_PK PRIMARY KEY(codigoProduto),
CONSTRAINT PRODUTO_FABRICANTE_FK FOREIGN KEY(cgc) REFERENCES FABRICANTE (cgc)
);

CREATE TABLE NOTAFISCAL (
numeroNotaFiscal NUMERIC(10) NOT NULL,
dataCompra DATE NOT NULL,
nomeCliente VARCHAR(30) NOT NULL,
CONSTRAINT NOTAFISCAL_PK PRIMARY KEY(numeroNotaFiscal)
);

CREATE TABLE MEDICAMENTO (
formula VARCHAR(30) NOT NULL,
tarja VARCHAR(30) NOT NULL,
codigoProduto NUMERIC(10) NOT NULL,
FOREIGN KEY(codigoProduto) REFERENCES PRODUTO (codigoProduto)
);

CREATE TABLE ITEM (
numeroItem NUMERIC(4) NOT NULL,
numeroNotaFiscal NUMERIC(10) NOT NULL,
codigoProduto NUMERIC(10) NOT NULL,
quantidade NUMERIC(4) NOT NULL,
PRIMARY KEY(numeroItem,numeroNotaFiscal,codigoProduto),
FOREIGN KEY(numeroNotaFiscal) REFERENCES NOTAFISCAL (numeroNotaFiscal),
FOREIGN KEY(codigoProduto) REFERENCES PRODUTO (codigoProduto)
);

CREATE TABLE PERFUME (
tipo VARCHAR(30) NOT NULL,
fragancia VARCHAR(30) NOT NULL,
codigoProduto NUMERIC(10) NOT NULL,
FOREIGN KEY(codigoProduto) REFERENCES PRODUTO (codigoProduto)
);



