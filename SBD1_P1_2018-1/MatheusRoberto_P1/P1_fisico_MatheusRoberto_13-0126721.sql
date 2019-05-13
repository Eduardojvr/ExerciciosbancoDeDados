-- Nome Projeto: P1
-- Nome database: softwareHouse
-- Nome Autor: Matheus Roberto
-- Projeto: 5 tabelas

create database IF NOT EXISTS softwareHouse
default character set utf8
default collate utf8_general_ci;

use softwareHouse;

CREATE TABLE IF NOT EXISTS SERVICO (
  idServico bigint NOT NULL AUTO_INCREMENT,
  descricao varchar(100) NOT NULL,
  precoUnitario bigint NOT NULL,
  constraint servico_PK PRIMARY KEY(idServico)
)ENGINE=InnoDB AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS EQUIPE (
  idEquipe bigint NOT NULL AUTO_INCREMENT,
  nomeFantasia varchar(30) NOT NULL,
  telefone bigint NOT NULL,
  constraint equipe_PK PRIMARY KEY(idEquipe)
)ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS CONTRATO (
  idContrato bigint NOT NULL AUTO_INCREMENT,
  dataEmissao date NOT NULL,
  valorTotal bigint NOT NULL,
  constraint contrato_PK PRIMARY KEY(idContrato)
)ENGINE=InnoDB AUTO_INCREMENT = 100;

CREATE TABLE IF NOT EXISTS email (
  email varchar(40) NOT NULL,
  idEquipe bigint NOT NULL,
  constraint equipe_email_FK FOREIGN KEY(idEquipe) REFERENCES EQUIPE(idEquipe)
)ENGINE=InnoDB ;

CREATE TABLE IF NOT EXISTS ATIVIDADE (
  idServico bigint NOT NULL,
  idContrato bigint NOT NULL,
  idEquipe bigint NOT NULL,
  constraint servico_atividade_FK FOREIGN KEY(idServico) REFERENCES SERVICO(idServico),
  constraint contrato_atividade_FK FOREIGN KEY(idContrato) REFERENCES CONTRATO(idContrato),
  constraint equipe_atividade_FK FOREIGN KEY(idEquipe) REFERENCES EQUIPE(idEquipe),
  constraint atividade_PK PRIMARY KEY(idServico, idContrato)
)ENGINE=InnoDB;

