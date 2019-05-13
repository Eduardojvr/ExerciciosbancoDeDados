-- --------     << aula4exer4Evolucao1 >>     ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ...........: 29/03/2018                              --
-- Autor(es) ..............: Mariana Nunes Pícolo                    --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: aula4exer4Evolucao1                     --
--                                                                   --
-- Data Ultima Alteracao ..: 05/04/2017                              --
--   => Edição do script para adequeção aos padrões                  --
--                                                                   --
-- PROJETO => 01 Base de Dados                                       --
--         => 04 Tabelas                                             --
--                                                                   --
-- ----------------------------------------------------------------- --

-- Cria Base de Dados
 CREATE DATABASE aula4exer4Evolucao1;

-- Usa ou referencia a Base de Dados
USE aula4exer4Evolucao1;

-- Cria as tabelas do Projeto
 CREATE TABLE PESSOA (
   cpf  int(11)     NOT NULL,
   nome varchar(50) NOT NULL,
  CONSTRAINT PESSOA_PK PRIMARY KEY(cpf)
 );

 CREATE TABLE ALUNO (
   cpf       int(11)     NOT NULL,
   curso     varchar(20) NOT NULL,
   matricula int(9)      NOT NULL, 
   semestre  int(2)      NOT NULL,
  CONSTRAINT ALUNO_PK PRIMARY KEY(matricula),
  CONSTRAINT ALUNO_PESSOA_FK FOREIGN KEY(cpf) REFERENCES PESSOA(cpf)
 );

 CREATE TABLE PROFESSOR (
   cpf               int(11)       NOT NULL,
   registroProfessor int(9)        NOT NULL,
   salario           decimal(10,2) NOT NULL,
  CONSTRAINT PROFESSOR_PK PRIMARY KEY(registroProfessor),
  CONSTRAINT PROFESSOR_PESSOA_FK FOREIGN KEY(cpf) REFERENCES PESSOA(cpf)
 );

 CREATE TABLE FUNCIONARIO (
   cpf                 int(11)      NOT NULL,
   registroFuncionario int(9)       NOT NULL,
   departamanento      varchar(20)  NOT NULL,
   salario             decimal(6,2) NOT NULL,
   CONSTRAINT FUNCIONARIO_PK PRIMARY KEY(registroFuncionario),
   CONSTRAINT FUNCIONARIO_PESSOA_FK FOREIGN KEY(cpf) REFERENCES PESSOA(cpf)
 );
