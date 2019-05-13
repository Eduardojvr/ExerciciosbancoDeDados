-- --------     << aula4exer6Evolucao2 >>     ------------ --
--                                                         --
--                    SCRIPT DE CONSULTA                   --
--                                                         --
-- Data Criacao ...........: 25/05/2018                    --
-- Autor(es) ..............: Lucas Hiroshi Horinouchi      --
-- Banco de Dados .........: MySQL                         --
-- Banco de Dados(nome) ...: aula4exer6Evolucao2           --
--                                                         --
-- Alteracao: Ajustes nas consultas                        --
--                                                         --
-- PROJETO => 01 Base de Dados                             --
--         => 09 Tabelas                                   --
--                                                         --
-- ------------------------------------------------------- --


USE aula4Exer6Evolucao2;

-- Situacao A
SELECT DISTINCT INFRACAO.codigoLocal, COUNT(*)
 FROM LOCALS INNER JOIN INFRACAO ON LOCALS.codigoLocal = INFRACAO.codigoLocal
 GROUP BY INFRACAO.codigoLocal;


-- Situacao B
SELECT descricaoModelo, resultTable.idTipo, COUNT(*) AS NumerosInfracao
  FROM ( SELECT VEICULO.Placa, VEICULO.codigoModelo, INFRACAO.idTipo
           FROM INFRACAO INNER JOIN VEICULO ON INFRACAO.Placa = VEICULO.Placa)
       AS resultTable INNER JOIN MODELO ON MODELO.codigoModelo = resultTable.codigoModelo
  GROUP BY descricaoModelo ORDER BY NumerosInfracao DESC;


-- Situacao C
SELECT nome, COUNT(*)
  FROM AGENTE INNER JOIN INFRACAO ON AGENTE.matriculaFuncional = INFRACAO.matriculaFuncional
  WHERE dataHora BETWEEN ('2018-03-18 00:00:00') AND ('2018-03-18 23:59:59')
  GROUP BY nome;
