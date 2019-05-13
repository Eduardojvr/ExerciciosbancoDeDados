-- --------     <<        aula8exer1             >>     ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ...........: 26/04/2018                              --
-- Autor(es) ..............: Isaac Borges Mota                       --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: aula8exer1                              --
--                                                                   --
-- Data Ultima Alteracao ..: 26/04/2018                              --
--   => Alteracao de campos                                          --
--                                                                   --
-- PROJETO => 01 Base de Dados                                       --
--         => 09 Tabelas                                             --
--                                                                   --
-- ----------------------------------------------------------------- --

DROP DATABASE IF EXISTS aula8exer1;

CREATE DATABASE IF NOT EXISTS aula8exer1;

USE aula8exer1;


CREATE TABLE CURSO (
        idCurso integer NOT NULL,
        nomeCurso varchar(30) NOT NULL,
        periodo varchar(20) NOT NULL,
     CONSTRAINT CURSO_PK primary key(idCurso)
)ENGINE = InnoDB;


CREATE TABLE ALUNO (
        matricula numeric(12) NOT NULL,
        rg numeric(15) NOT NULL,
        nomeAluno varchar(50) NOT NULL,
        dataNascimento date NOT NULL,
        idCurso integer NOT NULL,
     CONSTRAINT ALUNO_PK primary key(matricula),
     CONSTRAINT ALUNO_CURSO_FK foreign key(idCurso) references CURSO(idCurso)
)ENGINE = InnoDB;


CREATE TABLE DISCIPLINA (
        idDisciplina integer NOT NULL,
        nomeDisciplina varchar(50) NOT NULL,
        qtdeCredito integer NOT NULL,
     CONSTRAINT DISCIPLINA_PK primary key(idDisciplina)
)ENGINE = InnoDB;


CREATE TABLE FORMADO (
        idCurso integer NOT NULL,
        idDisciplina integer NOT NULL,
     CONSTRAINT FORMADO_CURSO_FK foreign key(idCurso) references CURSO(idCurso),
     CONSTRAINT FORMADO_DISCIPLINA_FK foreign key(idDisciplina) references DISCIPLINA(idDisciplina)
)ENGINE = InnoDB;
