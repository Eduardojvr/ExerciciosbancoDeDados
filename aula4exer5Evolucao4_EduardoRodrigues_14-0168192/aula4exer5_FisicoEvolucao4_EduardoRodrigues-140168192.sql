 -- --------     << aula4exer5Evolucao4  >>     ------------
-- 
--                    SCRIPT DE DEFINICAO DA BASE DE DADOS (DDL)
-- 
-- Data Criacao ...........: 23/04/2019
-- Autor(es) ..............: Eduardo Júnio Veloso Rodrigues
-- Banco de Dados .........: MySQL
-- Base de dados ...: aula4exer5Evolucao4
-- 
-- Data Ultima Alteracao ..: 29/04/2019
--   => Criacao de nova tabela 
--   => Correção do script de acordo com o nível conceitual e lógico
--      adição de engine.
-- -----------------------------------------------------------------

CREATE DATABASE if not exists aula4exer5Evolucao4;

USE aula4exer5Evolucao4;



CREATE TABLE MEDICO (
    crm int(8) not null,
    nome varchar(30) not null,
    constraint MEDICO_PK primary key (crm)
)engine = InnoDB;

CREATE TABLE ESPECIALIDADE (
    nomeEspecialidade varchar(30) not null,
    codEspecialidade int not null,
    constraint ESPECIALIDADE_PK PRIMARY KEY (codEspecialidade)
)engine = InnoDB;

CREATE TABLE PACIENTE (
    cpf bigint(11) not null,
    nome varchar(30) not null,
    sexo char(1) not null,
    cidade varchar(30) not null,
    bairro varchar(30) not null,
    estado varchar(20) not null,
    cep bigint(10) not null,
    complemento varchar(100) not null,
    constraint PACIENTE_PK PRIMARY KEY (cpf)
)engine = InnoDB;

CREATE TABLE telefone (
    cpf bigint(11) NOT NULL,
    telefone int,    
    constraint TELEFONE_PK PRIMARY KEY (cpf),
    constraint TELEFONE_PK FOREIGN KEY (cpf) references PACIENTE(cpf)
)engine = InnoDB;

CREATE TABLE CONSULTA (
    data datetime not null,
    cpf bigint(11) not null,
    crm int(8) not null,
    constraint CONSULTA_PK PRIMARY KEY (data, cpf, crm),
    constraint CONSULTA_MEDICO_FK foreign key (crm) references MEDICO(crm),
    constraint CONSULTA_PACIENTE_FK foreign key (cpf) references PACIENTE(cpf)
)engine = InnoDB;

CREATE TABLE RECEITA (
    idReceita int not null auto_increment,
    crm int(8) not null,
    data datetime not null,
    cpf bigint(11) not null,
    posologia varchar(100) not null,
    constraint RECEITA_PK primary key (idReceita),
    constraint RECEITA_CONSULTA_FK foreign key (data, cpf, crm)references CONSULTA (data, cpf, crm)
)engine = InnoDB auto_increment=1;

CREATE TABLE MEDICAMENTO (
    descricao varchar(100) not null,
    codMedicamento int not null,
    nome varchar(30) not null,
	constraint MEDICAMENTO_PK PRIMARY KEY (codMedicamento)
)engine = InnoDB;

CREATE TABLE possui (
    crm int(8) not null,
    codEspecialidade int not null,
	constraint ESPECIALIDADE_FK FOREIGN KEY (codEspecialidade) references ESPECIALIDADE(codEspecialidade),
    constraint MEDICO_FK FOREIGN KEY (crm) references MEDICO(crm)
)engine = InnoDB;

CREATE TABLE contem (
    idReceita int not null,
    codMedicamento int not null,
    constraint CONTEM_RECEITA_FK FOREIGN KEY (idReceita) references RECEITA(idReceita),
	constraint CONTEM_MEDICAMENTO_FK FOREIGN KEY (codMedicamento) references MEDICAMENTO(codMedicamento)
)engine = InnoDB;

#drop database aula4exer5Evolucao4;

