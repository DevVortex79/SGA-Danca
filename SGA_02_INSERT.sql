-- ============================================
-- SCRIPT 1: INSERIR DADOS (INSERT)
-- ============================================

USE Escola_de_danca;
GO

-- Inserir PROFESSORES (10 professores)
INSERT INTO PROFESSORES (nome, telefone, email, especialidade) VALUES
('Carlos Silva', '(11) 98765-4321', 'carlos@escola.com', 'Ballet'),
('Maria Santos', '(11) 97654-3210', 'maria@escola.com', 'Jazz'),
('Joao Oliveira', '(11) 96543-2109', 'joao@escola.com', 'Hip Hop'),
('Ana Costa', '(11) 95432-1098', 'ana@escola.com', 'Contemporaneo'),
('Ricardo Mendes', '(11) 94321-0987', 'ricardo@escola.com', 'Sapateado'),
('Fernanda Lima', '(11) 93210-9876', 'fernanda@escola.com', 'Danca de Salao'),
('Paulo Roberto', '(11) 92109-8765', 'paulo@escola.com', 'Street Dance'),
('Camila Dias', '(11) 91098-7654', 'camila@escola.com', 'Ballet'),
('Rodrigo Almeida', '(11) 90987-6543', 'rodrigo@escola.com', 'Jazz'),
('Patricia Ferreira', '(11) 89876-5432', 'patricia@escola.com', 'Zumba');

-- Inserir MODALIDADES (20 modalidades)
INSERT INTO MODALIDADE (nome_modalidade, horario, nivel_turma, id_professor) VALUES
-- Ballet
('Ballet', 'Segunda 18h', 'Iniciante', 1),
('Ballet', 'Terca 19h', 'Intermediario', 1),
('Ballet', 'Quarta 20h', 'Avancado', 1),
('Ballet', 'Sabado 10h', 'Iniciante', 8),
-- Jazz
('Jazz', 'Segunda 19h', 'Iniciante', 2),
('Jazz', 'Terca 20h', 'Intermediario', 2),
('Jazz', 'Quinta 18h', 'Avancado', 2),
('Jazz', 'Sabado 11h', 'Iniciante', 9),
-- Hip Hop
('Hip Hop', 'Quarta 18h', 'Iniciante', 3),
('Hip Hop', 'Quinta 19h', 'Intermediario', 3),
('Hip Hop', 'Sexta 20h', 'Avancado', 3),
-- Contemporaneo
('Contemporaneo', 'Sexta 18h', 'Intermediario', 4),
('Contemporaneo', 'Sabado 14h', 'Avancado', 4),
-- Sapateado
('Sapateado', 'Terca 18h', 'Iniciante', 5),
('Sapateado', 'Quinta 20h', 'Intermediario', 5),
-- Danca de Salao
('Danca de Salao', 'Segunda 20h', 'Iniciante', 6),
('Danca de Salao', 'Quarta 21h', 'Intermediario', 6),
-- Street Dance
('Street Dance', 'Sexta 19h', 'Iniciante', 7),
('Street Dance', 'Sabado 16h', 'Avancado', 7),
-- Zumba
('Zumba', 'Segunda 17h', 'Iniciante', 10);

-- Inserir ALUNOS (20 alunos)
INSERT INTO ALUNOS (nome, data_nascimento, telefone, email, cpf) VALUES
('Maria Eduarda Silva', '2010-03-15', '(11) 91234-5678', 'maria.eduarda@email.com', '11906080601'),
('Joao Pedro Santos', '2008-07-22', '(11) 92345-6789', 'joao.pedro@email.com', '23456789012'),
('Ana Clara Oliveira', '2012-11-08', '(11) 93456-7890', 'ana.clara@email.com', '34567890123'),
('Lucas Martins Costa', '2009-05-30', '(11) 94567-8901', 'lucas.martins@email.com', '45678901234'),
('Beatriz Lima Souza', '2011-09-14', '(11) 95678-9012', 'beatriz.lima@email.com', '56789012345'),
('Rafael Costa Alves', '2010-01-25', '(11) 96789-0123', 'rafael.costa@email.com', '67890123456'),
('Juliana Souza Pereira', '2008-12-03', '(11) 97890-1234', 'juliana.souza@email.com', '78901234567'),
('Gabriel Alves Ribeiro', '2013-04-17', '(11) 98901-2345', 'gabriel.alves@email.com', '89012345678'),
('Isabella Fernandes', '2011-06-28', '(11) 99012-3456', 'isabella.fernandes@email.com', '90123456789'),
('Pedro Henrique Silva', '2009-10-10', '(11) 91123-4567', 'pedro.henrique@email.com', '01234567890'),
('Larissa Rodrigues', '2012-02-14', '(11) 92234-5678', 'larissa.rodrigues@email.com', '11234567890'),
('Thiago Barbosa', '2010-08-05', '(11) 93345-6789', 'thiago.barbosa@email.com', '22345678901'),
('Camila Nunes', '2008-11-20', '(11) 94456-7890', 'camila.nunes@email.com', '33456789012'),
('Bruno Cardoso', '2013-01-30', '(11) 95567-8901', 'bruno.cardoso@email.com', '44567890123'),
('Sophia Castro', '2011-07-18', '(11) 96678-9012', 'sophia.castro@email.com', '55678901234'),
('Felipe Mendes', '2009-04-09', '(11) 97789-0123', 'felipe.mendes@email.com', '66789012345'),
('Luana Dias', '2012-09-27', '(11) 98890-1234', 'luana.dias@email.com', '77890123456'),
('Gustavo Lima', '2010-12-11', '(11) 99901-2345', 'gustavo.lima@email.com', '88901234567'),
('Mariana Rocha', '2008-05-06', '(11) 91012-3456', 'mariana.rocha@email.com', '99012345678'),
('Daniel Pereira', '2013-08-19', '(11) 92123-4567', 'daniel.pereira@email.com', '10123456789');

-- Inserir MATRICULAS (40+ matriculas variadas)
INSERT INTO ALUNO_MODALIDADE (id_aluno, id_modalidade, data_matricula) VALUES
-- Maria Eduarda: Ballet Iniciante + Jazz Iniciante + Zumba
(2, 1, '2024-11-10'),
(2, 5, '2024-11-10'),
(2, 20, '2024-12-01'),
-- Joao Pedro: Ballet Intermediario + Hip Hop Intermediario
(3, 2, '2024-10-15'),
(3, 10, '2024-10-20'),
-- Ana Clara: Ballet Iniciante + Sapateado Iniciante
(4, 1, '2025-01-05'),
(4, 14, '2025-01-05'),
-- Lucas: Hip Hop Iniciante + Jazz Iniciante + Street Dance
(5, 9, '2024-12-10'),
(5, 5, '2024-12-10'),
(5, 18, '2025-01-15'),
-- Beatriz: Ballet Intermediario + Contemporaneo Intermediario
(6, 2, '2025-01-20'),
(6, 12, '2025-01-20'),
-- Rafael: Hip Hop Iniciante
(7, 9, '2024-11-25'),
-- Juliana: Ballet Avancado + Jazz Avancado + Contemporaneo Avancado
(8, 3, '2024-09-01'),
(8, 7, '2024-09-01'),
(8, 13, '2024-10-15'),
-- Gabriel: Ballet Iniciante
(9, 4, '2025-02-05'),
-- Isabella: Danca de Salao Iniciante + Jazz Iniciante
(10, 16, '2024-12-20'),
(10, 8, '2025-01-10'),
-- Pedro: Hip Hop Avancado + Street Dance Avancado
(11, 11, '2024-10-05'),
(11, 19, '2024-11-01'),
-- Larissa: Ballet Iniciante + Sapateado Iniciante
(12, 1, '2025-01-25'),
(12, 14, '2025-01-25'),
-- Thiago: Jazz Intermediario + Hip Hop Intermediario
(13, 6, '2024-11-15'),
(13, 10, '2024-12-01'),
-- Camila: Ballet Avancado + Jazz Avancado
(14, 3, '2024-08-15'),
(14, 7, '2024-09-10'),
-- Bruno: Ballet Iniciante
(15, 4, '2025-02-10'),
-- Sophia: Danca de Salao Intermediario + Zumba
(16, 17, '2024-12-05'),
(16, 20, '2024-12-05'),
-- Felipe: Hip Hop Iniciante + Jazz Iniciante
(17, 9, '2025-01-12'),
(17, 5, '2025-01-12'),
-- Luana: Ballet Iniciante + Contemporaneo Intermediario
(18, 1, '2024-11-30'),
(18, 12, '2024-12-15'),
-- Gustavo: Sapateado Intermediario + Hip Hop Intermediario
(19, 15, '2024-10-20'),
(19, 10, '2024-11-05'),
-- Mariana: Ballet Avancado + Jazz Avancado + Hip Hop Avancado
(20, 3, '2024-07-10'),
(20, 7, '2024-08-01'),
(20, 11, '2024-09-15'),
-- Daniel: Ballet Iniciante
(21, 4, '2025-02-18');

PRINT 'Dados inseridos com sucesso!';
GO