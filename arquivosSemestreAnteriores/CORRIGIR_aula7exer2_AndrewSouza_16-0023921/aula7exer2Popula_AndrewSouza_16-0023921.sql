-- --------     << aula7exer2 >>     ------------ --
--                                                         --
--                    SCRIPT DE POPULA(DML)	           --
--                                                         --
-- Data Criacao ...........: 29/05/2018                    --
-- Autor(es) ..............: Andrew Lucas Guedes de Souza  --
-- Banco de Dados .........: MySQL                         --
-- Banco de Dados(nome) ...: aula7exer2             --
--                                                         --
--                                                         --
-- PROJETO => 01 Base de Dados                             --
--         => 07 Tabelas                                   --
--                                                         --
-- ------------------------------------------------------- --

USE aula7exer2;

INSERT INTO  FABRICANTE (cgc, nome, rua, numero, bairro, cidade, estado) VALUES
(1236549870, 'Curabem LDTA', 'Av. Marechal Deodoro', 123, 'Setor Sul', 'Planaltina', 'DF'),
(9871236540, 'PerfumeBom SA', 'Rua 25 de Abril', 23, 'Centro', 'Planaltina', 'GO'),
(4563217890, 'Tomoucurou LTDA', 'Rua Fernando Sorocaba', 7536, 'Vila Nova', 'Teofloantonio', 'MG');

INSERT INTO TELEFONE (telefone, cgc) VALUES
(61986327164, 1236549870),
(62952333524, 9871236540),
(65984347733, 4563217890);

INSERT INTO PRODUTO(codigoProduto , nome, tipoEmbalagem, quantidade, precoUnitario, cgc) VALUES
(2344561233, 'Aspirina', 'Caixa', 100, 1.50, 1236549870),
(6541235672, 'Dipirona', 'Cartela', 100, 2.59, 4563217890),
(1233212344, 'Jequiti Claudia Leite', 'Frasco', 100, 237.96, 9871236540);

INSERT INTO MEDICAMENTO (formula, tarja, codigoProduto) VALUES
 ('Uranio', 'Cinza', 2344561233),
 ('Chumbo Ferroso', 'azul', 6541235672);

INSERT INTO PERFUME(tipo, fragancia, codigoProduto) VALUES
('Leite', 'Caludia Leite', 1233212344);

INSERT INTO NOTAFISCAL(numeroNotaFiscal, dataCompra, nomeCliente) VALUES
(1, '2018-05-29', 'Joao Zabielli'),
(2, '2018-02-28', 'Gabriel Filipe Manso');

INSERT INTO ITEM (numeroItem, numeroNotaFiscal, codigoProduto, quantidade) VALUES
(1, 1, 1233212344, 1),
(1, 2, 2344561233, 2),
(2, 2, 6541235672, 3),
(3, 2, 1233212344, 1);