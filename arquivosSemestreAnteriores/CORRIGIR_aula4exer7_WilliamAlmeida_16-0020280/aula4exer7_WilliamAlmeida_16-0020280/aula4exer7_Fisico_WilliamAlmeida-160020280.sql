-- --------         << aula4exer7 >>          ------------ --
--                                                         --
--                    SCRIPT DE CRIACAO (DDL)              --
--                                                         --
-- Data Criacao ...........: 24/04/2018                    --
-- Autor(es) ..............: William Silva de Almeida      --
-- Banco de Dados .........: MySQL                         --
-- Banco de Dados(nome) ...: aula4exer7                    --
--                                                         --
-- Data Ultima Alteracao ..: 24/04/2018                    --
--   => Criacao de nova tabela                             --
--                                                         --
-- PROJETO => 01 Base de Dados                             --
--         => 09 Tabelas                                   --
--                                                         --
-- ------------------------------------------------------- --

-- Cria Base de Dados
CREATE DATABASE IF NOT EXISTS aula4exer7;

USE aula4exer7;


-- Cria Tabelas
CREATE TABLE EMPREGADO (
   matriculaFuncionario int(8)        NOT NULL AUTO_INCREMENT,
   sexo                 enum('M','F') NOT NULL,
   dataNascimento       date          NOT NULL,
   bairro               varchar(30)   NOT NULL,
   numero               int(4)        NOT NULL,
   rua                  varchar(30)   NOT NULL,
   salario              decimal(8, 2) NOT NULL,
   nome                 varchar(30)   NOT NULL,
   codigoDepartamento   int(8),
CONSTRAINT EMPREGADO_PK PRIMARY KEY (matriculaFuncionario)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE SUPERVISOR (
   matriculaSupervisor int(8) NOT NULL,
   dataSupervisor      date   NOT NULL,
CONSTRAINT SUPERVISOR_PK PRIMARY KEY (matriculaSupervisor),
CONSTRAINT SUPERVISOR_EMPREGADO_FK FOREIGN KEY (matriculaSupervisor) REFERENCES EMPREGADO(matriculaFuncionario)
) ENGINE = InnoDB;

CREATE TABLE GERENTE (
   matriculaGerente int(8) NOT NULL,
   dataGerente      date   NOT NULL,
CONSTRAINT GERENTE_PK PRIMARY KEY (matriculaGerente),
CONSTRAINT GERENTE_EMPREGADO_FK FOREIGN KEY (matriculaGerente) REFERENCES EMPREGADO(matriculaFuncionario)
) ENGINE = InnoDB;

CREATE TABLE DEPENDENTE (
   matriculaFuncionario int(8)        NOT NULL,
   nome                 varchar(30)   NOT NULL,
   sexo                 enum('M','F') NOT NULL,
   dataNascimento       date          NOT NULL,
   ligacaoEmpregado     varchar(20)   NOT NULL,
CONSTRAINT DEPENDENTE_EMPREGADO_FK FOREIGN KEY (matriculaFuncionario) REFERENCES EMPREGADO(matriculaFuncionario)
) ENGINE = InnoDB;

CREATE TABLE SUPERVISAO (
   cargaHoraria time NOT NULL,
   matriculaSupervisor int(8) NOT NULL,
   matriculaFuncionario int(8) NOT NULL,
CONSTRAINT SUPERVISAO_EMPREGADO_FK FOREIGN KEY (matriculaFuncionario) REFERENCES EMPREGADO(matriculaFuncionario),
CONSTRAINT SUPERVISAO_SUPERVISOR_FK FOREIGN KEY (matriculaSupervisor) REFERENCES SUPERVISOR(matriculaSupervisor)    
) ENGINE = InnoDB;

CREATE TABLE DEPARTAMENTO (
   codigoDepartamento int(8) NOT NULL AUTO_INCREMENT,
   matriculaGerente int(8) NOT NULL,
   nome varchar(30) NOT NULL,
CONSTRAINT DEPARTAMENTO_PK PRIMARY KEY (codigoDepartamento),
CONSTRAINT DEPARTAMENTO_GERENTE_FK FOREIGN KEY (matriculaGerente) REFERENCES GERENTE(matriculaGerente)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE LOCALIZACAO (
   codigoDepartamento int(8) NOT NULL,
   localizacao varchar(30) NOT NULL,
CONSTRAINT LOCALIZACAO_DEPARTAMENTO_FK FOREIGN KEY (codigoDepartamento) REFERENCES DEPARTAMENTO(codigoDepartamento)
) ENGINE = InnoDB;

CREATE TABLE PROJETO (
   nome               varchar(30) NOT NULL,
   localizacao        varchar(30) NOT NULL,
   codigoProjeto      int(8)      NOT NULL AUTO_INCREMENT,
   codigoDepartamento int(8)      NOT NULL,
CONSTRAINT PROJETO_PK PRIMARY KEY (codigoProjeto),
CONSTRAINT PROJETO_DEPARTAMENTO_FK FOREIGN KEY (codigoDepartamento) REFERENCES DEPARTAMENTO(codigoDepartamento)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE TRABALHO (
   cargaHoraria         time   NOT NULL,
   codigoProjeto        int(8) NOT NULL,
   matriculaFuncionario int(8) NOT NULL,
CONSTRAINT TRABALHO_EMPREGADO_FK FOREIGN KEY (matriculaFuncionario) REFERENCES EMPREGADO(matriculaFuncionario),
CONSTRAINT TRABALHO_PROJETO_FK FOREIGN KEY (codigoProjeto) REFERENCES PROJETO(codigoProjeto)
) ENGINE = InnoDB;