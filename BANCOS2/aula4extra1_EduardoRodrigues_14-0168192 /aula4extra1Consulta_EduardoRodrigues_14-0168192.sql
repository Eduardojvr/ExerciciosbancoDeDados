-- --------     << aula4extra1 >>     ------------------------ --
--                                                                   --
--                    SCRIPT DE MANIPULACAO (DML)                        --
--                                                                   --
-- Data Criacao ...........: 04/09/2019                              --
-- Autor(es) ..............: Eduardo Júnio Veloso Rodrigues              --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: aula4extra1                       --
--                                                                   --
-- PROJETO => 01 Base de Dados                                       --
--         => 02 Tabelas                                             --
-- ----------------------------------------------------------------- --

use aula4extra1;

-- A) Projeção de sigla e nome do estado de sigla SP e DF
-- π sigla, nome(𝝈[sigla = 'SP' ∪ sigla = 'DF'], ESTADO)
SELECT sigla, nome 
FROM ESTADO
WHERE sigla like'DF' or sigla like'SP';

-- B) Selecione somente o nome e a sigla das cidades que são dos estados RJ, DF e GO;
-- π nome, sigla (𝝈[sigla = 'RJ' ∪ sigla = 'DF' ∪ sigla = 'GO'], CIDADE)
SELECT nome, sigla 
from CIDADE
where sigla like'RJ' or 
	  sigla like'DF' or 
      sigla like'GO';

-- ou    

SELECT nome, sigla
FROM CIDADE
WHERE sigla IN ('RJ', 'DF', 'GO');

-- C) Selecione todas as cidades do primeiro estado que você cadastrou mostrando somente o nome da cidade, 
-- o nome do estado e sua sigla;

SELECT c.nome, e.nome, e.sigla 
FROM CIDADE c
INNER JOIN ESTADO e
ON c.sigla = e.sigla
WHERE e.sigla like 'DF';

-- D) Selecione somente o nome e a sigla do estado que você cadastrou por último e todas as cidades cadastradas nele,
-- mostrando o seu nome e a quantidade de habitantes em ordem crescente de nome de estado e nome de cidade.
SELECT e.nome, e.sigla, c.nome, c.habitante
FROM estado e
INNER JOIN CIDADE c 
ON e.sigla = c.sigla
WHERE e.sigla like 'GO'
order by e.nome, c.nome;
