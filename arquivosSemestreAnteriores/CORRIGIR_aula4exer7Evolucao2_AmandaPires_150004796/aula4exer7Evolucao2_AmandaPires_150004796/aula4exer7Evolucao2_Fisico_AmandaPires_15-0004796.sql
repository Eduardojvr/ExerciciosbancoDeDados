
﻿-- --------     << aula4exer7evolucao2 >>     ------------ --
--                                                         --
--                    SCRIPT DE CRIACAO (DDL)              --
--                                                         --
-- Data Criacao ...........: 03/05/2018                    --
-- Autor(es) ..............: Amanda Vieira Pires
-- Banco de Dados .........: MySQL                         --
-- Banco de Dados(nome) ...: aula4exer7evolucao2           --
--                                                         --
--                                                         --
--                                                         --
--                                                         --
-- PROJETO => 01 Base de Dados                             --
--         => 06 Tabelas                                   --
--                                                         --
-- ------------------------------------------------------- --

CREATE DATABASE IF NOT EXISTS aula4exer7evolucao2;

USE aula4exer7evolucao2;

CREATE TABLE DEPARTAMENTO (
	nome varchar(100) NOT NULL,
	codDepartamento bigint NOT NULL AUTO_INCREMENT,
	CONSTRAINT DEPARTAMENTO_PK PRIMARY KEY (codDepartamento)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE EMPREGADO (
    matEmpregado         BIGINT NOT NULL AUTO_INCREMENT,
    sexo                 CHAR NOT NULL,
    dataNascimento       DATE NOT NULL,
    bairro               VARCHAR(100) NOT NULL,
    numero               INT NOT NULL,
    rua                  VARCHAR(100) NOT NULL,
    salario              decimal(5, 2) NOT NULL,
    nome                 VARCHAR(100)   NOT NULL,
    codDepartamento      BIGINT NOT NULL,
    idade                INT NOT NULL,
    matSupervisor        BIGINT, 
    dataInicio           DATE,
    CONSTRAINT EMPREGADO_PK PRIMARY KEY (matEmpregado),
    CONSTRAINT codDepartamento_FK FOREIGN KEY(codDepartamento) REFERENCES DEPARTAMENTO (codDepartamento) 
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE DEPENDENTE (
	nome varchar(100) NOT NULL,
	dtNascimento date,
	ligacaoEmpregado varchar(100) NOT NULL,
	sexo char NOT NULL,
	matEmpregado bigint NOT NULL,
	CONSTRAINT DEPENDENTE_EMPREGADO_FK FOREIGN KEY(matEmpregado) REFERENCES EMPREGADO (matEmpregado)
)ENGINE = InnoDB;


CREATE TABLE PROJETO (
	localizacao varchar(100) NOT NULL,
	nome varchar(100) NOT NULL,
	codDepartamento bigint NOT NULL,
	codProjeto bigint NOT NULL,
	CONSTRAINT PROJETO_PK PRIMARY KEY (codProjeto),
    CONSTRAINT PROJETO_DEPARTAMENTO_FK FOREIGN KEY (codDepartamento) REFERENCES DEPARTAMENTO(codDepartamento)
)ENGINE = InnoDB AUTO_INCREMENT = 1;


CREATE TABLE localizacao (
	localizacao varchar(100),
	codDepartamento bigint,
	CONSTRAINT LOCALIZACAO_DEPARTAMENTO_FK FOREIGN KEY (codDepartamento) REFERENCES DEPARTAMENTO(codDepartamento)
)ENGINE = InnoDB;


CREATE TABLE trabalha (
	horas decimal(2, 2),
	codProjeto bigint,
	matEmpregado bigint,
    CONSTRAINT TRABALHO_PROJETO_FK FOREIGN KEY(codProjeto) REFERENCES PROJETO (codProjeto),
    CONSTRAINT TRABALHO_EMPREGADO_FK FOREIGN KEY(matEmpregado) REFERENCES EMPREGADO (matEmpregado)
)ENGINE = InnoDB;
