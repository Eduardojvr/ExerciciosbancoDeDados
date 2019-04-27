create database estudoaula4exer3;

use estudoaula4exer3;


CREATE TABLE CLIENTE (
    nome varchar(30) not null,
    cpf bigint(11) not null,
    dtaNascimento date not null,
    cep int not null,
    cidade varchar(30) not null,
    bairro varchar(30) not null,
    uf varchar(30) not null,
    rua int not null,
    constraint CLIENTE_PK primary key(cpf)
);

CREATE TABLE CONTA (
    agencia bigint not null,
    numeroConta bigint not null,
    saldo float not null,
    cpf bigint(11) not null,
    constraint CONTA_PK PRIMARY KEY (agencia, numeroConta),
    constraint CLIENTE_FK foreign key (cpf) references CLIENTE(cpf) 
);

CREATE TABLE CONTAPOUPANCA (
    dtaAniversario date not null,
    jurosMensal float not null,
    agencia bigint not null,
    numeroConta bigint not null,
    constraint CONTAPOUPANCA_FK foreign key (agencia, numeroConta) references CONTA(agencia, numeroConta)
);

CREATE TABLE CONTAINVESTIMENTO (
    rendimentoDiario int not null,
    agencia bigint not null,
    numeroConta bigint not null,
    constraint CONTAINVESTIMENTO_FK foreign key (agencia, numeroConta) references CONTA(agencia, numeroConta)
);

CREATE TABLE CONTACORRENTE (
    limiteChequeEspecial float not null,
    agencia bigint not null,
    numeroConta bigint not null,
	constraint CONTACORRENTE_FK foreign key (agencia, numeroConta) references CONTA(agencia, numeroConta)

);

CREATE TABLE telefone (
    cpf bigint(11) NOT NULL,
    telefone bigint
);

show tables;
drop database estudoaula4exer3; 