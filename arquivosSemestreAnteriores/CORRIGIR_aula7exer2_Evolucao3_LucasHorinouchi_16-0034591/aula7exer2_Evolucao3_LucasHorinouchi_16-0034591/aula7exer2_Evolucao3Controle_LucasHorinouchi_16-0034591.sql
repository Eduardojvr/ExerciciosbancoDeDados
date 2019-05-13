-- --------     << aula7exer2_Evolucao3 >>    ------------ --
--                                                         --
--                    SCRIPT DE CONTROLE	                 --
--                                                         --
-- Data Criacao ...........: 07/06/2018                    --
-- Autor(es) ..............: Lucas Hiroshi Horinouchi      --
-- Banco de Dados .........: MySQL                         --
-- Banco de Dados(nome) ...: aula7exer2_Evolucao3          --
--                                                         --
--                                                         --
-- PROJETO => 01 Base de Dados                             --
--         => 08 Tabelas                                   --
--                                                         --
-- ------------------------------------------------------- --

USE aula7exer2_Evolucao3;

-- O gerente é reponsváel por manter o controle sobre os produtos
-- e sobre o que os funcionarios estão vendendo ele também pode
-- alterar registros e deletar se for necessráio
CREATE USER 'Gerente'@'localhost' IDENTIFIED BY 'password';

GRANT SELECT ON aula7exer2_Evolucao3. * TO 'Gerente'@'localhost';
GRANT INSERT ON aula7exer2_Evolucao3. * TO 'Gerente'@'localhost';
GRANT UPDATE ON aula7exer2_Evolucao3. * TO 'Gerente'@'localhost';
GRANT DELETE ON aula7exer2_Evolucao3. * TO 'Gerente'@'localhost';

-- Ele é um funcionario da farmacia ele pode realizar vendas e
-- verificar os produtos existentes na loja e verificar dados
-- sobre fornecedores.
CREATE USER 'Farmaceutico'@'localhost' IDENTIFIED BY 'password';

GRANT SELECT ON aula7exer2_Evolucao3. * TO 'Farmaceutico'@'localhost';
GRANT INSERT ON aula7exer2_Evolucao3.POSSUI TO 'Farmaceutico'@'localhost';
GRANT INSERT ON aula7exer2_Evolucao3.VENDA TO 'Farmaceutico'@'localhost';
GRANT INSERT ON aula7exer2_Evolucao3.RECEITA TO 'Farmaceutico'@'localhost';

-- Os Clientes podem pesquisar as suas compras e por produtos que
-- tenha na farmacia.
CREATE USER 'Cliente'@'localhost' IDENTIFIED BY 'password';

GRANT SELECT ON aula7exer2_Evolucao3.VENDA TO 'Cliente'@'localhost';
GRANT SELECT ON aula7exer2_Evolucao3.POSSUI TO 'Cliente'@'localhost';
GRANT SELECT ON aula7exer2_Evolucao3.PRODUTO TO 'Cliente'@'localhost';
GRANT SELECT ON aula7exer2_Evolucao3.FABRICANTE TO 'Cliente'@'localhost';

-- Ele é o responsavel pelo banco podendo fazer alterações, criar
-- tabelas alterar, tabelas, pesquisar ele basicamente tem acesso
-- a todas as funções relacionadas com o banco da farmacia.
CREATE USER 'Admin'@'localhost' IDENTIFIED BY 'password';

GRANT ALL ON aula7exer2_Evolucao3. * TO 'Admin'@'localhost';

-- Apagar Usuarios
-- DROP USER 'Admin'@'localhost';
-- DROP USER 'Farmaceutico'@'localhost';
-- DROP USER 'Cliente'@'localhost';
-- DROP USER 'Gerente'@'localhost';