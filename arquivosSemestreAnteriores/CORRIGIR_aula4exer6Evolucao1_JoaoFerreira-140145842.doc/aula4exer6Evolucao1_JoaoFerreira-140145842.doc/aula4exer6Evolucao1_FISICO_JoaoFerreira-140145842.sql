-- --------            << aula 4 exer 6 >>            ------------   --
--                                                                   --
--                    SCRIPT DE CRIACAO(DDL)                         --
--                                                                   --
-- Data Criacao ...........: 20/04/2018                              --
-- Autor(es) ..............: João Pedro Gomes               --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: aula4exer6	                             --
--                                                                   --
-- Data Ultima Alteracao ..: -                              --
--                                             		             --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 9 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --

Create database aula4exer6;

use aula4exer6;

CREATE TABLE PESSOA (
	cpf		numeric(11)		Not NUll Primary Key,
    nome 	varchar(30)		Not Null,
    sexo	enum('M','F')	Not Null,
    DataNascimento	date	Not Null,
	bairro	varchar(30)		Not Null,
    cidade  varchar(20)		Not Null,
    estado	varchar(20)		Not Null
);

CREATE TABLE TELEFONE (
	numero	varchar(10)	Not Null Primary Key,
	cpf		numeric(11) Not Null
);

CREATE TABLE VEICULO (
	placa	varchar(7) Not Null Primary Key,
    corPredominante varchar(10) Not Null,
    AnoFabricacao varchar (4) Not Null,
    chassi varchar (17) Not Null,
    cpf	   numeric(11)	Not Null,
    Foreign Key(cpf) references PESSOA (cpf)
    );
    
CREATE TABLE MODELO (
	IdModelo numeric(6)	Not Null Primary KEy,
    Descricao varchar(20) Not Null
    );
CREATE TABLE CATEGORIA (
	IdCategoria numeric(6) Not Null Primary key,
    Descricao varchar(20) Not Null
    );
    
CREATE TABLE INFRACAO (
	DataHora datetime	Not Null Primary Key,
    VelocidadeAferida varchar(5) Not Null,
    Placa varchar(7)	Not Null,
    IdTipoInfracao numeric(6)	Not Null,
    idLocal	varchar(10)	Not Null, 
    matriculaAgente		varchar(10)	Not Null,
    Foreign Key (Placa) References VEICULO (placa),
    Foreign Key (matriculaAgente) References AGENTETRANSITO (matriculaFuncional)
);

CREATE TABLE AGENTETRANSITO (
	matriculaFuncional varchar(10) Not Null Primary Key,
    Nome	varchar(20)	Not Null,
    dataContratacao		date 	Not Null,
    tempoServico	numeric(2)	Not Null
    );
    
CREATE TABLE TIPOINFRACAO (
	idTipoInfracao varchar(5)	Not Null Primary Key,
    Descricao varchar(20) Not Null
    );
CREATE TABLE LOCALINFRACAO (
	codigoLocal	varchar(2)	Not Null Primary Key,
    PosicaoGeografica varchar(10) Not Null,
    VelocidadePermitida varchar(5) Not Null
	);
    