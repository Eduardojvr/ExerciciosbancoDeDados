-- --------     << aula7exer2_Evolucao3 >>    ------------ --
--                                                         --
--                    SCRIPT DE CRIAÇÃO(DML)	             --
--                                                         --
-- Data Criacao ...........: 07/06/2018                    --
-- Autor(es) ..............: Lucas Hiroshi Horinouchi      --
-- Banco de Dados .........: MySQL                         --
-- Banco de Dados(nome) ...: aula7exer2_Evolucao3          --
--                                                         --
--                                                         --
-- PROJETO => 01 Base de Dados                             --
--         => 08 Tabelas                                   --
--                                                         --
-- ------------------------------------------------------- --

CREATE DATABASE IF NOT EXISTS aula7exer2_Evolucao3;

USE aula7exer2_Evolucao3;

CREATE TABLE FABRICANTE (
  cgc int(10) NOT NULL,
  nomeFabricante varchar(50) NOT NULL,
  rua varchar(50) NOT NULL,
  numero int(4) NOT NULL,
  bairro varchar(50) NOT NULL,
  estado varchar(50) NOT NULL,
  cidade varchar(50) NOT NULL,
CONSTRAINT FABRICANTE_PK PRIMARY KEY(cgc)
)Engine = innodb;

CREATE TABLE TELEFONE (
telefone bigint(13) NOT NULL,
cgc int(10) NOT NULL,
CONSTRAINT TELEFONE_FK FOREIGN KEY(cgc) REFERENCES FABRICANTE (cgc)
)Engine = innodb;

CREATE TABLE PRODUTO (
  codigoProduto int(8) NOT NULL,
  tipoEmbalagem varchar(50) NOT NULL,
  precoUnitario decimal(8,2) NOT NULL,
  nome varchar(50) NOT NULL,
  cgc int(10) NOT NULL,
CONSTRAINT PORDUTO_PK PRIMARY KEY(codigoProduto),
CONSTRAINT PRODUTO_FK FOREIGN KEY(cgc) REFERENCES FABRICANTE(cgc)
)Engine = innodb;

CREATE TABLE MEDICAMENTO (
  formula varchar(50) NOT NULL,
  tarja varchar(50) NOT NULL,
  codigoProduto int(8) NOT NULL,
CONSTRAINT MEDICAMENTO_FK FOREIGN KEY(codigoProduto) REFERENCES PRODUTO(codigoProduto)
)Engine = innodb;

CREATE TABLE PERFUME (
  tipo varchar(50) NOT NULL,
  fragancia varchar(50) NOT NULL,
  codigoProduto int(8) NOT NULL,
CONSTRAINT PERFUME_FK FOREIGN KEY(codigoProduto) REFERENCES PRODUTO(codigoProduto)
)Engine = innodb;

CREATE TABLE VENDA (
  notaFiscal int(8) NOT NULL AUTO_INCREMENT,
  dtCompra date NOT NULL,
  nomeCliente varchar(50) NOT NULL,
CONSTRAINT VENDA_PK PRIMARY KEY(notaFiscal)
)Engine = innodb AUTO_INCREMENT = 1;

CREATE TABLE  POSSUI (
  quantidade int(4) NOT NULL,
  notaFiscal int(8) NOT NULL,
  codigoProduto int(8) NOT NULL,
  imposto decimal(10,2) NOT NULL,
CONSTRAINT POSSUI_VENDA_FK FOREIGN KEY(notaFiscal) REFERENCES VENDA (notaFiscal),
CONSTRAINT POSSUI_PRODUTO_FK FOREIGN KEY(codigoProduto) REFERENCES PRODUTO (codigoProduto)
)Engine = innodb AUTO_INCREMENT = 1;

CREATE TABLE RECEITA (
  crm int(10) NOT NULL,
  dtEmissao date NOT NULL,
  idReceita int(8) NOT NULL AUTO_INCREMENT,
  notaFiscal int(8) NOT NULL,
CONSTRAINT RECEITA_PK PRIMARY KEY(idReceita),
CONSTRAINT RECEITA_VENDA_FK FOREIGN KEY(notaFiscal) REFERENCES VENDA (notaFiscal)
)Engine = innodb AUTO_INCREMENT = 1;
