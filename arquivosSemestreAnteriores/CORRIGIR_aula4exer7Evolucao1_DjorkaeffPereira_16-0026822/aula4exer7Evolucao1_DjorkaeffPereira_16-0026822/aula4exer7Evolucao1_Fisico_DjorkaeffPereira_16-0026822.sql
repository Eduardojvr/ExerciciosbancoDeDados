-- --------     << aula4exer7evolucao1 >>     ------------ --
--                                                         --
--                    SCRIPT DE CRIACAO (DDL)              --
--                                                         --
-- Data Criacao ...........: 01/05/2018                    --
-- Autor(es) ..............: Djorkaeff Alexandre Vilela    --
-- Banco de Dados .........: MySQL                         --
-- Banco de Dados(nome) ...: aula4exer7evolucao1           --
--                                                         --
--                                                         --
--                                                         --
--                                                         --
-- PROJETO => 01 Base de Dados                             --
--         => 07 Tabelas                                   --
--                                                         --
-- ------------------------------------------------------- --

CREATE DATABASE IF NOT EXISTS aula4exer7evolucao1;

USE aula4exer7evolucao1;

CREATE TABLE EMPREGADO (
    matriculaFuncionario INT        NOT NULL AUTO_INCREMENT,
    sexo                 enum('M','F') NOT NULL,
    dataNascimento       DATE          NOT NULL,
    bairro               VARCHAR(30)   NOT NULL,
    numero               INT        NOT NULL,
    rua                  VARCHAR(30)   NOT NULL,
    salario              decimal(8, 2) NOT NULL,
    nome                 VARCHAR(30)   NOT NULL,
    codigoDepartamento   INT        NOT NULL,
    idade                INT        NOT NULL,
    CONSTRAINT EMPREGADO_PK PRIMARY KEY (matriculaFuncionario)
) ENGINE = InnoDB AUTO_INCREMENT = 1;


CREATE TABLE GERENTE (
    matriculaGerente INT NOT NULL,
    dataGerente      DATE   NOT NULL,
    CONSTRAINT GERENTE_PK PRIMARY KEY (matriculaGerente),
    CONSTRAINT GERENTE_EMPREGADO_FK FOREIGN KEY (matriculaGerente) REFERENCES EMPREGADO(matriculaFuncionario)
) ENGINE = InnoDB;

CREATE TABLE DEPENDENTE (
    matriculaFuncionario INT        NOT NULL,
    nome                 VARCHAR(30)   NOT NULL,
    sexo                 enum('M','F') NOT NULL,
    dataNascimento       DATE          NOT NULL,
    ligacaoEmpregado     VARCHAR(20)   NOT NULL,
    CONSTRAINT DEPENDENTE_EMPREGADO_FK FOREIGN KEY (matriculaFuncionario) REFERENCES EMPREGADO(matriculaFuncionario)
) ENGINE = InnoDB;


CREATE TABLE DEPARTAMENTO (
    codigoDepartamento INT NOT NULL AUTO_INCREMENT,
    matriculaGerente INT NOT NULL,
    nome VARCHAR(30) NOT NULL,
    CONSTRAINT DEPARTAMENTO_PK PRIMARY KEY (codigoDepartamento),
    CONSTRAINT DEPARTAMENTO_GERENTE_FK FOREIGN KEY (matriculaGerente) REFERENCES GERENTE(matriculaGerente)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE LOCALIZACAO (
    codigoDepartamento INT NOT NULL,
    localizacao VARCHAR(30) NOT NULL,
    CONSTRAINT LOCALIZACAO_DEPARTAMENTO_FK FOREIGN KEY (codigoDepartamento) REFERENCES DEPARTAMENTO(codigoDepartamento)
) ENGINE = InnoDB;

CREATE TABLE PROJETO (
    nome               VARCHAR(30) NOT NULL,
    localizacao        VARCHAR(30) NOT NULL,
    codigoProjeto      INT      NOT NULL AUTO_INCREMENT,
    codigoDepartamento INT      NOT NULL,
    CONSTRAINT PROJETO_PK PRIMARY KEY (codigoProjeto),
    CONSTRAINT PROJETO_DEPARTAMENTO_FK FOREIGN KEY (codigoDepartamento) REFERENCES DEPARTAMENTO(codigoDepartamento)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE TRABALHO (
    cargaHoraria         TIME   NOT NULL,
    codigoProjeto        INT NOT NULL,
    matriculaFuncionario INT NOT NULL,
    CONSTRAINT TRABALHO_EMPREGADO_FK FOREIGN KEY (matriculaFuncionario) REFERENCES EMPREGADO(matriculaFuncionario),
    CONSTRAINT TRABALHO_PROJETO_FK FOREIGN KEY (codigoProjeto) REFERENCES PROJETO(codigoProjeto)
) ENGINE = InnoDB;