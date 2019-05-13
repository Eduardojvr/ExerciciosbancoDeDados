-- --------     << aula4exer7Evolucao3 >>     ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ...........: 08/05/2018                               --
-- Autor(es) ..............: William Silva de Almeida                --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: aula4exer7Evolucao3                     --
--                                                                   --
-- Data Ultima Alteracao ..: 08/05/2018                               --
--   => Criacao de nova tabela                                       --
--                                                                   --
-- PROJETO => 01 Base de Dados                                        --
--         => 06 Tabelas                                              --
--                                                                    --
-- ----------------------------------------------------------------- --
CREATE DATABASE IF NOT EXISTS aula4exer7Evolucao3
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE aula4exer7Evolucao3;

CREATE TABLE EMPREGADO (
   matriculaFuncionario bigint AUTO_INCREMENT,
   sexo enum('M','F') NOT NULL,
   dataNascimento date NOT NULL,
   bairro varchar(30) NOT NULL,
   numero int(4) NOT NULL,
   rua varchar(30) NOT NULL,
   salario decimal(8, 2) NOT NULL,
   nome varchar(30) NOT NULL,
   codigoDepartamento bigint,
   matriculaSupervisor bigint,
CONSTRAINT EMPREGADO_PK PRIMARY KEY (matriculaFuncionario),
CONSTRAINT EMPREGADO_EMPREGADO_FK FOREIGN KEY (matriculaSupervisor) REFERENCES EMPREGADO(matriculaFuncionario)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8;



CREATE TABLE DEPENDENTE (
   matriculaFuncionario bigint NOT NULL,
   nome varchar(30) NOT NULL,
   sexo enum('M','F') NOT NULL,
   dataNascimento date NOT NULL,
   ligacaoEmpregado varchar(20) NOT NULL,
CONSTRAINT DEPENDENTE_EMPREGADO_FK FOREIGN KEY (matriculaFuncionario) REFERENCES EMPREGADO(matriculaFuncionario)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;


CREATE TABLE DEPARTAMENTO (
   codigoDepartamento bigint AUTO_INCREMENT,
   matriculaGerente bigint,
   nome varchar(30) NOT NULL,
   dataInicio date NOT NULL,
CONSTRAINT DEPARTAMENTO_PK PRIMARY KEY (codigoDepartamento),
CONSTRAINT DEPARTAMENTO_EMPREGADO_FK FOREIGN KEY (matriculaGerente) REFERENCES EMPREGADO(matriculaFuncionario)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8;

ALTER TABLE EMPREGADO
ADD CONSTRAINT EMPREGADO_DEPARTAMENTO_FK FOREIGN KEY (codigoDepartamento) REFERENCES DEPARTAMENTO(codigoDepartamento)
;

CREATE TABLE LOCALIZACAO (
   codigoDepartamento bigint NOT NULL,
   localizacao varchar(30) NOT NULL,
CONSTRAINT LOCALIZACAO_DEPARTAMENTO_FK FOREIGN KEY (codigoDepartamento) REFERENCES DEPARTAMENTO(codigoDepartamento)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE PROJETO (
   nome varchar(30) NOT NULL,
   localizacao varchar(30) NOT NULL,
   codigoProjeto bigint NOT NULL AUTO_INCREMENT,
   codigoDepartamento bigint NOT NULL,
CONSTRAINT PROJETO_PK PRIMARY KEY (codigoProjeto),
CONSTRAINT PROJETO_DEPARTAMENTO_FK FOREIGN KEY (codigoDepartamento) REFERENCES DEPARTAMENTO(codigoDepartamento)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8;

CREATE TABLE TRABALHO (
   cargaHoraria time NOT NULL,
   codigoProjeto bigint NOT NULL,
   matriculaFuncionario bigint NOT NULL,
CONSTRAINT TRABALHO_EMPREGADO_FK FOREIGN KEY (matriculaFuncionario) REFERENCES EMPREGADO(matriculaFuncionario),
CONSTRAINT TRABALHO_PROJETO_FK FOREIGN KEY (codigoProjeto) REFERENCES PROJETO(codigoProjeto) 
) ENGINE = InnoDB DEFAULT CHARSET = utf8;