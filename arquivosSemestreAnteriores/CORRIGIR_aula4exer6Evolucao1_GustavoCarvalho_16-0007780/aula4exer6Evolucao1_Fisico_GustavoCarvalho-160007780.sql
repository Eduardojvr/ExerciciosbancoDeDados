-- --------     << aula4exer6Evolucao1 >>     ------------------------------- --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ...........: 17/04/2018                              --
-- Autor(es) ..............: Guilherme Marques Rosa, Gustavo Carvalho--
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: exer6

-- Data Ultima Alteracao ..: 20/04/2017                              --
--   => Criação do script por inteiro 
--   => Evolução(por Gustavo)
--                                                                   --
-- PROJETO => 01 Base de Dados                                       --
--         => 10 Tabelas                                              --
--                                                                   --
--                                                                   --
--                                                                   --
-- ----------------------------------------------------------------- --
CREATE DATABASE IF NOT EXISTS exer6;

USE exer6;

CREATE TABLE IF NOT EXISTS AGENTE (
matricula numeric(11) NOT NULL,
nome varchar(40) NOT NULL,
dataContratacao DATE NOT NULL,
tempoServiço int(3) NOT NULL,

CONSTRAINT AGENTE_PK PRIMARY KEY (matricula)
);

CREATE TABLE IF NOT EXISTS INFRACAO (
valor VARCHAR(7) NOT NULL,
dataHora DATETIME NOT NULL,
velAferida int(3) NOT NULL,

codTipo int(3) NOT NULL,
placa VARCHAR(7) NOT NULL,
matricula numeric(11) NOT NULL,
codLocal int(3) NOT NULL
);

CREATE TABLE IF NOT EXISTS VEICULO (
placa VARCHAR(7) NOT NULL,
chassi VARCHAR(17) NOT NULL,
cor VARCHAR(10) NOT NULL,
anoFab DATE NOT NULL,

CONSTRAINT VEICULO_PK PRIMARY KEY(placa),

cpf numeric(11) NOT NULL,
codModelo int(6) NOT NULL,
codCategoria int(2) NOT NULL
);

CREATE TABLE IF NOT EXISTS PESSOA (
cpf numeric(11) NOT NULL,
nome VARCHAR(40) NOT NULL,
dataNasc DATE NOT NULL,
sexo CHAR NOT NULL,

CONSTRAINT PESSOA_PK PRIMARY KEY(cpf)
);

CREATE TABLE IF NOT EXISTS MODELO (
	codModelo int(6) NOT NULL AUTO_INCREMENT,
	nomeModelo VARCHAR(30) NOT NULL,

	CONSTRAINT MODELO_PK PRIMARY KEY(codModelo)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS CATEGORIA (
	codCategoria int(2) NOT NULL AUTO_INCREMENT,
	nomeCategoria VARCHAR(30) NOT NULL,
    
    CONSTRAINT CATEGORIA_PK PRIMARY KEY(codCategoria)
)ENGINE = InnoDB AUTO_INCREMENT = 1 ;

CREATE TABLE IF NOT EXISTS TIPO (
	codTipo int(3) NOT NULL AUTO_INCREMENT,
	nomeTipo VARCHAR(40) NOT NULL,

	CONSTRAINT TIPO_INFRACAO_PK PRIMARY KEY (codTipo)
)ENGINE = InnoDB AUTO_INCREMENT = 1 ;

CREATE TABLE IF NOT EXISTS LOCALL (
	codLocal int(3) NOT NULL AUTO_INCREMENT,
	posicaoGeo VARCHAR(40) NOT NULL,
	velMax int(3) NOT NULL,

    CONSTRAINT LOCALIDADE_PK PRIMARY KEY (codLocal)
)ENGINE = InnoDB AUTO_INCREMENT = 1 ;

CREATE TABLE IF NOT EXISTS FONE (
fone VARCHAR(9) NOT NULL,

cpf numeric(11) NOT NULL
);

CREATE TABLE IF NOT EXISTS ENDERECO (
	bairro VARCHAR(30) NOT NULL, 
    cidade VARCHAR(30) NOT NULL, 
    estado VARCHAR(2) NOT NULL,
    
    cpf numeric(11) NOT NULL
);

ALTER TABLE VEICULO ADD CONSTRAINT VEICULO_MODELO_FK FOREIGN KEY(codModelo) REFERENCES MODELO (codModelo);
ALTER TABLE VEICULO ADD CONSTRAINT VEICULO_PESSOA_FK FOREIGN KEY(cpf) REFERENCES PESSOA (cpf);
ALTER TABLE VEICULO ADD CONSTRAINT VEICULO_CATEGORIA_FK FOREIGN KEY(CodCategoria) REFERENCES CATEGORIA (CodCategoria);

ALTER TABLE INFRACAO ADD CONSTRAINT TIPO_FK FOREIGN KEY(codTipo) REFERENCES TIPO (codTipo);
ALTER TABLE INFRACAO ADD CONSTRAINT INFRACAO_VEICULO_FK FOREIGN KEY(placa) REFERENCES VEICULO (placa);
ALTER TABLE INFRACAO ADD CONSTRAINT INFRACAO_LOCALL_FK FOREIGN KEY(codLocal) REFERENCES LOCALL (codLocal);
ALTER TABLE INFRACAO ADD CONSTRAINT INFRACAO_AGENTE_FK FOREIGN KEY(matricula) REFERENCES AGENTE (matricula);

ALTER TABLE FONE ADD CONSTRAINT FONE_PESSOA_FK FOREIGN KEY(cpf) REFERENCES PESSOA (cpf);
ALTER TABLE ENDERECO ADD CONSTRAINT ENDERECO_PESSOA_FK FOREIGN KEY(cpf) REFERENCES PESSOA (cpf);

-- DROP DATABASE exer6;
