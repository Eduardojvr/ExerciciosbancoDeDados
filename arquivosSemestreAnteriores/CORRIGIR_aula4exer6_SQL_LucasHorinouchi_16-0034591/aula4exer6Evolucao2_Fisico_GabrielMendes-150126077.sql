-- --------     << aula4exer6Evolucao2 >>     ------------ --
--                                                         --
--                    SCRIPT DE CRIACAO (DDL)              --
--                                                         --
-- Data Criacao ...........: 21/04/2018                    --
-- Autor(es) ..............: Gabriel Braga Mendes          --
-- Banco de Dados .........: MySQL                         --
-- Banco de Dados(nome) ...: aula4exer6Evolucao2           --
--                                                         --
--                                                         --
-- PROJETO => 01 Base de Dados                             --
--         => 09 Tabelas                                   --
--                                                         --
-- ------------------------------------------------------- --

-- Cria base de dados
CREATE DATABASE IF NOT EXISTS aula4Exer6Evolucao2;

USE aula4Exer6Evolucao2;


-- Cria tabelas
CREATE TABLE PESSOA (
cpf bigint(11) NOT NULL,
nome varchar(50),
sexo varchar(9) NOT NULL,
bairro varchar(30),
cidade varchar(30) NOT NULL,
estado varchar(30) NOT NULL,
dataNascimento date NOT NULL,
CONSTRAINT PESSOA_PK PRIMARY KEY (cpf)
)Engine = Innodb;

CREATE TABLE TELEFONE (
telefone bigint(11) NOT NULL,
cpf bigint(11) NOT NULL,
CONSTRAINT Telefone_FK FOREIGN KEY(cpf) REFERENCES PESSOA (cpf)
)Engine = Innodb;


CREATE TABLE CATEGORIA (
idCategoria int(2) NOT NULL AUTO_INCREMENT,
descricaoCategoria varchar(20) NOT NULL,
CONSTRAINT CATEGORIA_PK PRIMARY KEY(idCategoria)
)Engine = Innodb AUTO_INCREMENT=1;

CREATE TABLE MODELO (
codigoModelo int(6) NOT NULL AUTO_INCREMENT,
descricaoModelo varchar(30) NOT NULL,
CONSTRAINT MODELO_PK PRIMARY KEY(codigoModelo)
)Engine = Innodb AUTO_INCREMENT=1;


CREATE TABLE VEICULO (
placa varchar(8) NOT NULL,
chassi varchar(20) NOT NULL,
corPredominante varchar(20) NOT NULL,
anoFabricacao int(4) NOT NULL,
cpf bigint(11) NOT NULL,
codigoModelo int(6) NOT NULL,
idCategoria int(2) NOT NULL,
CONSTRAINT VEICULO_PK PRIMARY KEY (placa),
CONSTRAINT FOREIGN KEY(cpf) REFERENCES PESSOA (cpf),
CONSTRAINT FOREIGN KEY(codigoModelo) REFERENCES MODELO (codigoModelo),
CONSTRAINT FOREIGN KEY(idCategoria) REFERENCES CATEGORIA (idCategoria)
)Engine = Innodb;

CREATE TABLE LOCAL (
codigoLocal int(3) NOT NULL AUTO_INCREMENT,
velPermitida int(3) NOT NULL,
posicaoGeografica varchar(10),
CONSTRAINT LOCAL_PK PRIMARY KEY(codigoLocal)
)Engine = Innodb AUTO_INCREMENT=1;

CREATE TABLE AGENTE (
matriculaFuncional bigint(10) NOT NULL AUTO_INCREMENT,
nome varchar(50) NOT NULL,
dataContratacao date NOT NULL,
tempoServico int(3),
CONSTRAINT AGENTE_PK PRIMARY KEY (matriculaFuncional)
)Engine = Innodb AUTO_INCREMENT=1;

CREATE TABLE TIPOINFRACAO (
descricao varchar(30) NOT NULL,
valorInfracao numeric(10) NOT NULL,
idTipo int(2) NOT NULL AUTO_INCREMENT,
CONSTRAINT TIPOINFRACAO_PK PRIMARY KEY(idTipo)
)Engine = Innodb AUTO_INCREMENT=1;

CREATE TABLE INFRACAO (
dataHora datetime NOT NULL,
velocidadeAferida int(4) NOT NULL,
codigoInfracao bigint(15) NOT NULL AUTO_INCREMENT,
idTipo int(2) NOT NULL,
matriculaFuncional bigint(10) NOT NULL,
codigoLocal int(3) NOT NULL,
placa varchar(8) NOT NULL,
CONSTRAINT INFRACAO_PK PRIMARY KEY(codigoInfracao),
CONSTRAINT FOREIGN KEY(idTipo) REFERENCES TIPOINFRACAO (idTipo),
CONSTRAINT FOREIGN KEY(matriculaFuncional) REFERENCES AGENTE (matriculaFuncional),
CONSTRAINT FOREIGN KEY(codigoLocal) REFERENCES LOCAL (codigoLocal),
CONSTRAINT FOREIGN KEY(placa) REFERENCES VEICULO (placa)
)Engine = Innodb AUTO_INCREMENT=1;