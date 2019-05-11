-- --------     << aula4exer5Evolucao4 >>     ------------
-- 
--                    SCRIPT PARA POPULAR TABELAS
-- 
-- Data Criacao ...........: 29/04/2019
-- Autor(es) ..............: Eduardo Júnio Veloso Rodrigues
-- Banco de Dados .........: MySQL
-- Base de dados(nome) ...: aula4exer5Evolucao4
-- 
-- Data Ultima Alteracao ..: 29/04/2019
--   => Comandos para inserção de dados nas tabels da base de dados
-- -----------------------------------------------------------------

use aula4exer5Evolucao4;

-- Insere médicos
insert into MEDICO(crm, nome)
values	(11111111, 'Médico um'),
		(22222222, 'Médico dois'),
        (33333333, 'Médico três');
        
-- Insere especialidades
insert into ESPECIALIDADE(nomeEspecialidade, codEspecialidade)
values	('Cardiologista', 123),
		('Ortopedista', 345),
        ('Dermatologista', 678);

-- Insere paciente
insert into PACIENTE(cpf, nome, sexo, cidade, bairro, estado, cep, complemento)
values	(11111111111, 'Ana', 'F', 'Brasília', 'Brasília', 'DF', 1234, 'Casa da Ana'),
		(22222222222, 'Pedro', 'M', 'Brasília', 'Brasília', 'DF', 567567, 'Casa do Pedro'),
        (33333333333, 'Maria', 'F', 'Brasília', 'Brasília', 'DF', 7688, 'Casa da Maria');
        
-- Insere telefone
insert into telefone (cpf, telefone)
values	(11111111111, 12341234),
		(22222222222, 78687687),
        (33333333333, 76867879);
      
-- Insere consulta      
insert into CONSULTA(data, cpf, crm)
values	(current_timestamp, 11111111111, 11111111),
		(current_timestamp, 22222222222, 22222222),
        (current_timestamp, 33333333333, 33333333);


-- Insere receita	
insert into RECEITA (idReceita, data, cpf,crm, posologia)
values	(null, current_timestamp, 11111111111, 11111111, 'Duas vezes ao dia'),
		(null, current_timestamp, 22222222222, 22222222, 'Três vezes ao dia'),
		(null, current_timestamp, 33333333333, 33333333, 'Nove vezes ao dia');
	

-- Insere medicamento	
insert into MEDICAMENTO(descricao, codMedicamento, nome)
values	('Para dores de cabeça', 123, 'Dipirona'),
		('Para diabetes', 667,'Insulina'),
        ('Para dores em geral', 234,'Dorflex');
        

insert into possui (crm, codEspecialidade)
values	(11111111, 123),
		(22222222, 345),
        (33333333, 678);

insert into contem (idReceita, codMedicamento)
values	(1, 123),
		(2, 667),
		(3, 234);
        
	

	
        
        
	


