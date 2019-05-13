-- --------     << aula4exer6Evolucao1 >>     ------------------------------- --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ...........: 20/04/2018                              --
-- Autor(es) ..............: Gustavo Carvalho                  --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: exer6                                   --
--                                                                   --
-- PROJETO => Popula as tabelas                                      --
--                                                                   --
--                                                                   --
--                                                                   --
-- ----------------------------------------------------------------- --

USE exer6;

INSERT INTO MODELO (nomeModelo) VALUES ('GOL 1.8');
INSERT INTO MODELO (nomeModelo) VALUES ('UNO TURBO');

INSERT INTO CATEGORIA (nomeCategoria) VALUES ('AUTOMOVEL');
INSERT INTO CATEGORIA (nomeCategoria) VALUES ('MOTOCICLETA');

INSERT INTO LOCALL (posicaoGeo, velMax) VALUES ('BR040 km 2',80);
INSERT INTO LOCALL (posicaoGeo, velMax) VALUES ('EPNB trecho 4',60);

INSERT INTO TIPO (nomeTipo) VALUES ('20% acima da velocidade');
INSERT INTO TIPO (nomeTipo) VALUES ('30% acima da velocidade');

INSERT INTO AGENTE (matricula, nome, dataContratacao, tempoServiço) VALUES (120021,'Carlos','2018-01-12',3);
INSERT INTO AGENTE (matricula, nome, dataContratacao, tempoServiço) VALUES (120342,'Amanda','2018-01-12',3);

INSERT INTO PESSOA (cpf, nome, sexo, dataNasc) VALUES (11111111111,'Thiago','M','1970-01-30');
INSERT INTO PESSOA (cpf, nome, sexo, dataNasc) VALUES (22222222222,'Romeu','M','1955-02-10');

INSERT INTO ENDERECO (bairro, cidade, estado, cpf) VALUES ('Samambaia','Brasilia','DF',(SELECT cpf FROM PESSOA WHERE cpf = '11111111111'));
INSERT INTO ENDERECO (bairro, cidade, estado, cpf) VALUES ('Sudoeste','Brasilia','DF',(SELECT cpf FROM PESSOA WHERE cpf = '22222222222'));

INSERT INTO FONE (fone, cpf) VALUES ('30224431',(SELECT cpf FROM PESSOA WHERE cpf = '11111111111'));
INSERT INTO FONE (fone, cpf) VALUES ('982767172',(SELECT cpf FROM PESSOA WHERE cpf = '22222222222'));

INSERT INTO VEICULO (placa, chassi, cor, anoFab,codModelo, codCategoria, cpf) VALUES (
	'KIL0001',
	'9BGRD08X04G117974',
    'branco',
    '1999-01-01',
    (SELECT codModelo FROM MODELO WHERE nomeModelo = 'UNO TURBO'),	
    (SELECT codCategoria FROM CATEGORIA WHERE nomeCategoria = 'AUTOMOVEL'),
    (SELECT cpf FROM PESSOA WHERE nome = 'Thiago')
);
INSERT INTO VEICULO (placa, chassi, cor, anoFab,codModelo, codCategoria, cpf) VALUES (
	'IAL2202',
    '9AJRD07U01E112000',
    'vermelho',
    '2009-01-01',
    (SELECT codModelo FROM MODELO WHERE nomeModelo = 'GOL 1.8'),
    (SELECT codCategoria FROM CATEGORIA WHERE nomeCategoria = 'AUTOMOVEL'),
    (SELECT cpf FROM PESSOA WHERE nome = 'Romeu')
);

INSERT INTO INFRACAO (dataHora, valor, velAferida, placa, codTipo,codLocal, matricula) VALUES (
    '2018-04-10 02:22:34',
    '84',
    '100',
    (SELECT placa FROM VEICULO WHERE placa = 'KIL0001'),
    (SELECT codTipo FROM TIPO WHERE nomeTipo = '20% acima da velocidade'),
    (SELECT codLocal FROM LOCALL WHERE posicaoGeo = 'BR040 km 2'),
    (SELECT matricula FROM AGENTE WHERE nome = 'Carlos')
    
);

INSERT INTO INFRACAO (dataHora, valor, velAferida, placa, codTipo,codLocal, matricula) VALUES (
    '2018-03-22 22:34:34',
    '84',
    '90',
    (SELECT placa FROM VEICULO WHERE placa = 'IAL2202'),
    (SELECT codTipo FROM TIPO WHERE nomeTipo = '30% acima da velocidade'),
    (SELECT codLocal FROM LOCALL WHERE posicaoGeo = 'EPNB trecho 4'),
    (SELECT matricula FROM AGENTE WHERE nome = 'Amanda')
    
);

-- select * from INFRACAO;

