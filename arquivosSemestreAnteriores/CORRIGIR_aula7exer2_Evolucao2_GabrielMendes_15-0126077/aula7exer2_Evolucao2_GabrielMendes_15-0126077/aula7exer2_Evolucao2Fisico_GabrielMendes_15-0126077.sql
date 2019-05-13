-- --------     << aula7exer2_Evolucao2 >>     ------------ --
--                                                         --
--                    SCRIPT DE CRIACAO(DDL)	           --
--                                                         --
-- Data Criacao ...........: 07/06/2018                    --
-- Autor(es) ..............: Gabriel Braga Mendes          --
-- Banco de Dados .........: MySQL                         --
-- Banco de Dados(nome) ...: aula7exer2_Evolucao2          --
--                                                         --
--                                                         --
-- PROJETO => 01 Base de Dados                             --
--         => 08 Tabelas                                   --
--                                                         --
-- ------------------------------------------------------- --

CREATE DATABASE IF NOT EXISTS aula7exer2_Evolucao2;

USE aula7exer2_Evolucao2;

CREATE TABLE IF NOT EXISTS FABRICANTE (
cgc int(10) NOT NULL,
nomeFabricante varchar(50) NOT NULL,
rua varchar(50) NOT NULL,
numero int(4) NOT NULL,
bairro varchar(50) NOT NULL,
estado varchar(50) NOT NULL,
cidade varchar(50) NOT NULL,
CONSTRAINT FABRICANTE_PK PRIMARY KEY(cgc)
)Engine = innodb;

CREATE TABLE IF NOT EXISTS TELEFONE (
telefone bigint(13) NOT NULL,
cgc int(10) NOT NULL,
CONSTRAINT TELEFONE_FK FOREIGN KEY(cgc) REFERENCES FABRICANTE (cgc)
)Engine = innodb;

CREATE TABLE IF NOT EXISTS PRODUTO (
codigoProduto int(8) NOT NULL,
tipoEmbalagem varchar(50) NOT NULL,
quantidade int(4) NOT NULL,
precoUnitario decimal(8,2) NOT NULL,
nome varchar(50) NOT NULL,
cgc int(10) NOT NULL,
CONSTRAINT PORDUTO_PK PRIMARY KEY(codigoProduto),
CONSTRAINT PRODUTO_FK FOREIGN KEY(cgc) REFERENCES FABRICANTE(cgc)
)Engine = innodb;

CREATE TABLE IF NOT EXISTS MEDICAMENTO (
formula varchar(50) NOT NULL,
tarja varchar(50) NOT NULL,
codigoProduto int(8) NOT NULL,
CONSTRAINT MEDICAMENTO_FK FOREIGN KEY(codigoProduto) REFERENCES PRODUTO(codigoProduto)
)Engine = innodb;

CREATE TABLE IF NOT EXISTS PERFUME (
tipo varchar(50) NOT NULL,
fragancia varchar(50) NOT NULL,
codigoProduto int(8) NOT NULL,
CONSTRAINT PERFUME_FK FOREIGN KEY(codigoProduto) REFERENCES PRODUTO(codigoProduto)
)Engine = innodb;

CREATE TABLE IF NOT EXISTS VENDA (
notaFiscal int(8) NOT NULL AUTO_INCREMENT,
dtCompra date NOT NULL,
nomeCliente varchar(50) NOT NULL,
imposto decimal(8,2) NOT NULL,
CONSTRAINT VENDA_PK PRIMARY KEY(notaFiscal)
)Engine = innodb AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS ITEM (
codigoItem int(8) NOT NULL AUTO_INCREMENT,
quantidade int(4) NOT NULL,
notaFiscal int(8) NOT NULL,
codigoProduto int(8) NOT NULL,
CONSTRAINT ITEM_PK PRIMARY KEY(codigoItem),
CONSTRAINT ITEM_VENDA_FK FOREIGN KEY(notaFiscal) REFERENCES VENDA (notaFiscal),
CONSTRAINT ITEM_PRODUTO_FK FOREIGN KEY(codigoProduto) REFERENCES PRODUTO (codigoProduto)
)Engine = innodb AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS RECEITA (
crm int(10) NOT NULL,
dtEmissao date NOT NULL,
idReceita int(8) NOT NULL AUTO_INCREMENT,
codigoItem int(8) NOT NULL,
CONSTRAINT RECEITA_PK PRIMARY KEY(idReceita),
CONSTRAINT RECEITA_FK FOREIGN KEY(codigoItem) REFERENCES ITEM (codigoItem)
)Engine = innodb AUTO_INCREMENT = 1;
