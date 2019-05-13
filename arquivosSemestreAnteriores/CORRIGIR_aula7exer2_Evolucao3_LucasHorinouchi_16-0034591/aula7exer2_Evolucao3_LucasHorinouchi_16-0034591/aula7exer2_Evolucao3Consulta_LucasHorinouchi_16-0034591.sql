-- --------     << aula7exer2_Evolucao3 >>    ------------ --
--                                                         --
--                    SCRIPT DE CONSULTA	                 --
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

-- Primeira Consulta => Pesquisa relevante para o primeiro usuário final que o script Controle tiver criado envolvendo no mínimo duas
-- tabelas do projeto;

-- O gerente da farmacia quer saber qual fabricante possui mais vendas
SELECT nomeFabricante,
       Sum(quantidade) AS qtdVend
FROM   POSSUI
       INNER JOIN PRODUTO
               ON POSSUI.codigoProduto = PRODUTO.codigoProduto
       INNER JOIN FABRICANTE ON PRODUTO.cgc = FABRICANTE.cgc
GROUP BY nomeFabricante
ORDER  BY qtdVend DESC;

-- Segunda Consulta => Pesquisa importante para o segundo usuário final que o script Controle tiver criado envolvendo no mínimo duas
-- tabelas do projeto;

-- O cliente pode pesquisar quais foram as suas ultimas compras.
SELECT VENDA.notaFiscal,  dtCompra, PRODUTO.codigoProduto, nome, precoUnitario, SUM(quantidade) as qtdVend
FROM   POSSUI
       INNER JOIN PRODUTO
               ON POSSUI.codigoProduto = PRODUTO.codigoProduto
       INNER JOIN VENDA
               ON VENDA.notaFiscal = POSSUI.notaFiscal
WHERE nomeCliente = 'joao'
 GROUP BY VENDA.notaFiscal, PRODUTO.codigoProduto;

-- O cliente pode pesquisar produtos na loja.
SELECT nome, precoUnitario, nomeFabricante, tipoEmbalagem
FROM   PRODUTO
       INNER JOIN FABRICANTE
               ON FABRICANTE.cgc = PRODUTO.cgc
WHERE nome LIKE 'Ferra%';

-- Terceira Consulta => Apresentar em ordem decrescente quais os produtos mais vendidos pela farmácia, estando a projeção dessa consulta
-- mostrando o código identificador do produto, seu nome e a quantidade de produtos vendidas.
SELECT PRODUTO.codigoproduto,
       nome,
       Sum(quantidade) AS qtdVend
FROM   POSSUI
       INNER JOIN PRODUTO
               ON POSSUI.codigoProduto = PRODUTO.codigoProduto
GROUP  BY PRODUTO.codigoproduto,
          nome,
          quantidade
ORDER  BY qtdVend DESC;