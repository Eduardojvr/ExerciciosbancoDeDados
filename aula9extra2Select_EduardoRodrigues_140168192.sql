-- --------     << aula4exer5evol4 >>     ------------
-- 
--                    SCRIPT MANIPULAÇÃO (DML)
-- 
-- date Criacao ...........: 22/05/2019
-- Autor(es) ..............: Eduardo Júnio Veloso Rodrigues
-- Banco de Dados .........: MySQL
-- Base de Dados(nome) ....: aula4exer5evol4
-- 
-- date Ultima Alteracao ..: 22/05/2019
--   => Manipulação de dados
--   
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
-- 
-- -----------------------------------------------------------------

use aula4exer5evol4;

-- 1) Mostre todos medicamentos de 1 receita 

select * from contem c
inner join RECEITA r
on (c.idReceita=r.idReceita) 
inner join  MEDICAMENTO m 
on (m.codMedicamento=c.codMedicamento)
where (r.idReceita=1); 

-- 2) Listar todas as especialidades e indicar quais médicos estão em cada uma, além das especialidades que estão sem médico.

select * from possui p
right join MEDICO m on (p.crm=m.crm)
right join ESPECIALIDADE e on (e.idEspecialidade=p.idEspecialidade);

-- 3) Mostrar os médicos e os pacientes que foram atendidos em uma data específica. 

select * from CONSULTA c
inner join MEDICO m on (c.crm=m.crm)
inner join PACIENTE p on (c.cpf=p.cpf)
where c.data='2019-04-20';

-- 4) Apresentar quantos pacientes cada médico atendeu (sem identificar os pacientes - mostrar somente a quantidade numérica).

SELECT m.nome, COUNT(*) FROM CONSULTA c
inner join MEDICO m on (c.crm=m.crm)
group by c.crm;

-- 5) Mostrar todos os dados de pacientes consultados por parte do nome fornecido na pesquisa.

-- Todos pacientes registrados
select * from PACIENTE p
where p.nome like'%Ana%';

-- Apenas pacientes consultados
select * from CONSULTA c
inner join PACIENTE p
on (p.cpf=c.cpf)
where p.nome like'%Ana%';
