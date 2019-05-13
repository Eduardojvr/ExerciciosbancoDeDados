-- --------     << aula4exer6 >>     ------------------------------- --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ...........: 17/04/2018                              --
-- Autor(es) ..............: Guilherme Marques Rosa                  --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: exer6                                   --
--                                                                   --
-- PROJETO => 01 Base de Dados                                       --
--         => 5 Tabelas                                              --
--                                                                   --
--                                                                   --
--                                                                   --
-- ----------------------------------------------------------------- --
DROP DATABASE exer6;

CREATE DATABASE IF NOT EXISTS exer6;

USE exer6;

CREATE TABLE PESSOAEPOSSE (
cpf BIGINT NOT NULL,
nome VARCHAR(60) NOT NULL,
dataNasc DATE NOT NULL,
estado VARCHAR(2) NOT NULL,
bairro VARCHAR(30) NOT NULL,
cidade VARCHAR(30) NOT NULL,
rua VARCHAR(30) NOT NULL,
num INT NOT NULL,
comp VARCHAR(30),
idPosse INT(3) NOT NULL UNIQUE AUTO_INCREMENT,
CONSTRAINT PESSOA_PK PRIMARY KEY(cpf,idPosse)
) ENGINE = innodb;

CREATE TABLE VEICULO (
placa VARCHAR(8) NOT NULL,
chassi VARCHAR(17) NOT NULL,
cor VARCHAR(15) NOT NULL,
modelo INT NOT NULL,
categoria INT NOT NULL,
anoFab YEAR NOT NULL,
cpf BIGINT NOT NULL,
CONSTRAINT VEICULO_PK PRIMARY KEY(placa),
CONSTRAINT VEICULO_CPF_FK FOREIGN KEY(cpf) REFERENCES PESSOAEPOSSE (cpf)
) ENGINE = innodb;

CREATE TABLE AGENTE (
nome VARCHAR(60) NOT NULL,
dataContr DATE NOT NULL,
matFun BIGINT NOT NULL,
CONSTRAINT AGENTE_PK PRIMARY KEY(matFun)
) ENGINE = innodb;

CREATE TABLE INFRACAO (
  tipo INT NOT NULL,
  valor FLOAT NOT NULL,
  dataHora DATETIME NOT NULL,
  idInf INT(3) PRIMARY KEY AUTO_INCREMENT,
  codigoLocal INT NOT NULL,
  maxVel INT NOT NULL,
  lon FLOAT NOT NULL,
  lat FLOAT NOT NULL,
  velAferida INT,
  idPosse INT(3) NOT NULL,
  matFun BIGINT NOT NULL,
  CONSTRAINT INFRACAO_POSSE_FK FOREIGN KEY(idPosse) REFERENCES PESSOAEPOSSE (idPosse),
  CONSTRAINT INFRACAO_AGENTE_FK FOREIGN KEY(matFun) REFERENCES AGENTE (matFun)
) ENGINE = innodb;

CREATE TABLE fone (
fone VARCHAR(13) NOT NULL,
cpf BIGINT NOT NULL,
FOREIGN KEY(cpf) REFERENCES PESSOAEPOSSE (cpf)
) ENGINE = innodb;
