create database aula4exer2;

use aula4exer2;

CREATE TABLE PARENTESCO (
    codParentesco int not null,
    tipoParentesco varchar(30) not null,
    constraint PARENTESCO_PK primary key (codParentesco)
);

CREATE TABLE PESSOA (
    nome varchar(30) not null,
    dtaNascimento date not null,
    codParentesco int not null,
    codPessoa int not null,
    constraint PESSOA_PK primary key (codPessoa),
	constraint PESSOA_FK foreign key (codParentesco) references PARENTESCO(codParentesco)
);

CREATE TABLE endereco (
    codPessoa INT NOT NULL,
    rua varchar(30) not null,
    bairro varchar(30) not null,
    cidade varchar(30) not null,
    cep int not null,
    constraint ENDERECO_FK foreign key (codPessoa) references PESSOA(codPessoa)
);

CREATE TABLE telefone (
    codPessoa INT NOT NULL,
    telefone bigint not null,
	constraint TELEFONE_FK foreign key (codPessoa) references PESSOA(codPessoa)
);

show tables;

drop database aula4exer2;