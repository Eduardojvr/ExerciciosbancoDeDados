-- --------     << aula4exer6_Fisico >>     ------------------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ...........: 17/04/2018                              --
-- Autor(es) ..............: Filipe Dias Soares Lima                 --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: aula4exer6_Fisico                       --
--                                                                   --
-- PROJETO => 01 Base de Dados                                       --
--         => 08 Tabelas                                             --
--                                                                   --
--                                                                   --
-- ----------------------------------------------------------------- --

CREATE DATABASE IF NOT EXISTS aula4exer6evolucao1Fisico;
USE aula4exer6evolucao1Fisico;

CREATE TABLE IF NOT EXISTS categoria (
    codCategoria INTEGER(2) NOT NULL,
    CONSTRAINT CDCATEGORIA PRIMARY KEY (codCategoria)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS modelo (
    codModelo INTEGER(6) NOT NULL,
    CONSTRAINT CDMODELO PRIMARY KEY (codModelo)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS veiculo (
    placa VARCHAR(8) NOT NULL,
    anoFabricacao INTEGER(4) NOT NULL,
    chassi VARCHAR(17) NOT NULL,
    cor VARCHAR(10) NOT NULL,
    codCategoria INTEGER(2) NOT NULL, /* FOREIGN KEY */
    codModelo INTEGER(6) NOT NULL, /* FOREIGN KEY */
    CONSTRAINT PLACA_PK PRIMARY KEY (placa),
    CONSTRAINT CDCATEGORIA_FK FOREIGN KEY (codCategoria) REFERENCES categoria(codCategoria),
    CONSTRAINT CDMODELO_FK FOREIGN KEY (codModelo) REFERENCES modelo(codModelo)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS pessoa (
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    cpf NUMERIC(11) NOT NULL,
    dtNascimento DATE NOT NULL,
    idade INTEGER(3) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    sexo CHAR NOT NULL,
    codEndereco INTEGER NOT NULL,
    CONSTRAINT CPF_PK PRIMARY KEY (cpf),
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS agente(
    matriculaFuncional INTEGER NOT NULL,
    dtContratacao DATE NOT NULL,
    tempServico INTEGER NOT NULL,
    nome VARCHAR(100) NOT NULL,
    CONSTRAINT MATFUNCIONAL_PK PRIMARY KEY (matriculaFuncional)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS lugar(
    codLugar INTEGER NOT NULL,
    posicao VARCHAR(30) NOT NULL,
    velocidadePermitida INTEGER NOT NULL,
    CONSTRAINT CDLUGAR_PK PRIMARY KEY (codLugar)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS telefone(
    nmrTelefone BIGINT(9) NOT NULL,
    cpf NUMERIC(11) NOT NULL,
    CONSTRAINT CPF_FK FOREIGN KEY (cpf) REFERENCES pessoa(cpf)
) ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS infracao (
    codInfracao INTEGER NOT NULL,
    hora TIME NOT NULL,
    dtInfracao DATE NOT NULL,
    velocidadeAferida INTEGER,
    valorInfracao NUMERIC NOT NULL,
    matriculaFuncional INTEGER NOT NULL, /* FOREIGN KEY */
    codLugar INTEGER NOT NULL, /* FOREIGN KEY */
    cpf NUMERIC(11) NOT NULL, /* FOREIGN KEY */
    placa VARCHAR(8) NOT NULL, /* FOREIGN KEY */
    CONSTRAINT CDINFRACAO_PK PRIMARY KEY (codInfracao),
    CONSTRAINT PLACA_FK FOREIGN KEY (placa) REFERENCES veiculo(placa),
    CONSTRAINT AGENTE_FK FOREIGN KEY (matriculaFuncional) REFERENCES agente(matriculaFuncional),
    CONSTRAINT CDLUGAR_FK FOREIGN KEY (codLugar) REFERENCES lugar(codLugar),
    CONSTRAINT CPF_FK FOREIGN KEY (cpf) REFERENCES pessoa(cpf)
) ENGINE = InnoDB;