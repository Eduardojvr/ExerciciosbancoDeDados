-- --------     << aula4exer6 >>     ------------------------------- --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ...........: 17/04/2018                              --
-- Autor(es) ..............: Guilherme Marques Rosa                  --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: exer6                                   --
--                                                                   --
-- PROJETO => Popula as tabelas                                      --
--                                                                   --
--                                                                   --
--                                                                   --
-- ----------------------------------------------------------------- --
INSERT INTO AGENTE(nome,dataContr,matFun) VALUES("Roberto","2017-02-25","123456");
INSERT INTO PESSOAEPOSSE(cpf,nome,dataNasc,estado,bairro,cidade,rua,num) VALUES ("12345678911","Felipe Smith","1995-12-12","DF","Guara 2","Brasilia","QE 34 Conj E","45");
INSERT INTO fone(fone,cpf) VALUES ("991239856","12345678911");
INSERT INTO VEICULO(placa,chassi,cor,modelo,categoria,anoFab,cpf) VALUES ("JOJ-1234","9WBKB0S8054000000","Vermelho","000001","02","2017","12345678911");
INSERT INTO INFRACAO(tipo,valor,dataHora,codigoLocal,maxVel,lon,lat,idPosse,matFun)  VALUES ("01","150.20","2018-04-17 00:00:00","123","80","-135.7","135","1","123456");

INSERT INTO AGENTE(nome,dataContr,matFun) VALUES("Carlos","2017-02-25","123457");
INSERT INTO PESSOAEPOSSE(cpf,nome,dataNasc,estado,bairro,cidade,rua,num) VALUES ("12345678910","João Smith","1995-12-12","DF","Guara 2","Brasilia","QE 34 Conj E","45");
INSERT INTO fone(fone,cpf) VALUES ("991239756","12345678910");
INSERT INTO VEICULO(placa,chassi,cor,modelo,categoria,anoFab,cpf) VALUES ("JAJ-1234","9WBKB0S8054010000","Rosa","000003","02","2017","12345678910");
INSERT INTO INFRACAO(tipo,valor,dataHora,codigoLocal,maxVel,lon,lat,idPosse,matFun)  VALUES ("02","1550.20","2018-04-17 00:30:00","123","80","-135.7","135","1","123456");
