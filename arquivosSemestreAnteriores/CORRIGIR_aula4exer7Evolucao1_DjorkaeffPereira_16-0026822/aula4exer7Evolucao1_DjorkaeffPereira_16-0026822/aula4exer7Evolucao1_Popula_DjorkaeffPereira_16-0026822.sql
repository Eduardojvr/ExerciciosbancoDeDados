-- --------     << aula4exer7evolucao1 >>     ------------ --
--                                                         --
--                    SCRIPT DE POPULA (DML)               --
--                                                         --
-- Data Criacao ...........: 01/05/2018                    --
-- Autor(es) ..............: Djorkaeff Alexandre Vilela    --
-- Banco de Dados .........: MySQL                         --
-- Banco de Dados(nome) ...: aula4exer7evolucao1           --
--                                                         --
--                                                         --
--         => 07 Tabelas                                   --
--                                                         --
-- ------------------------------------------------------- --


USE aula4exer7evolucao1;

INSERT INTO EMPREGADO (sexo, dataNascimento, bairro, numero, rua, salario, nome, codigoDepartamento, idade) 
VALUES 
    ('M', '1972-07-28', 'Valparaiso', 2, 'Jardim Oriente', 5000, 'Alessandro Vicente', 1, 45),
    ('F', '1971-10-15', 'Valparaiso', 5, 'Cidade Jardins', 5000, 'Valeria Vilela', 2, 46),
    ('M', '1998-10-22', 'Valparaiso', 8, 'Céu azul', 5000, 'Djorkaeff Alexandre', 3, 19);


INSERT INTO GERENTE (matriculaGerente, dataGerente)
VALUES
    (1, '2003-03-28'),
    (2, '2008-05-14'),
    (3, '2017-03-13');

INSERT INTO DEPENDENTE (matriculaFuncionario, nome, sexo, dataNascimento, ligacaoEmpregado) 
VALUES
    (1, 'Izabella', 'F', '2000-03-13', 'Esposa'),
    (2, 'Yuri', 'M', '2000-09-10', 'Filho'),
    (3, 'Darlene', 'F', '2005-02-10', 'Mãe');

INSERT INTO DEPARTAMENTO (matriculaGerente, nome)
VALUES
    (1, 'Tecnologia'),
    (2, 'Financeiro'),
    (3, 'Marketing');

INSERT INTO LOCALIZACAO (codigoDepartamento, localizacao)
VALUES
    (1, 'Primeiro andar'),
    (3, 'Sala 250'),
    (2, 'Prédio azul');

INSERT INTO PROJETO (nome, localizacao, codigoDepartamento)
VALUES
    ('Estilo', 'Prédio azul', 1),
    ('Saúde', 'Sala 250', 2),
    ('Beleza', 'Primeiro andar', 3);

INSERT INTO TRABALHO (cargaHoraria, codigoProjeto, matriculaFuncionario)
VALUES
    ('10:00', 2, 2),
    ('11:00', 1, 3),
    ('06:00', 3, 1);