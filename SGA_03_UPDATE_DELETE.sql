-- ============================================
-- SCRIPT 3: UPDATE E DELETE
-- ============================================

USE Escola_de_danca;
GO

-- ============================================
-- UPDATE 1: Atualizar telefone de um aluno
-- ============================================

-- Ver ANTES
SELECT * FROM ALUNOS WHERE id_aluno = 1;

-- Atualizar
UPDATE ALUNOS
SET telefone = '(11) 99999-8888'
WHERE id_aluno = 1;

-- Ver DEPOIS
SELECT * FROM ALUNOS WHERE id_aluno = 1;
GO

-- ============================================
-- UPDATE 2: Mudar horario de uma modalidade
-- ============================================

-- Ver ANTES
SELECT * FROM MODALIDADE WHERE id_modalidade = 1;

-- Atualizar
UPDATE MODALIDADE
SET horario = 'Segunda 17h'
WHERE id_modalidade = 1;

-- Ver DEPOIS
SELECT * FROM MODALIDADE WHERE id_modalidade = 1;
GO

-- ============================================
-- UPDATE 3: Mudar especialidade de um professor
-- ============================================

-- Ver ANTES
SELECT * FROM PROFESSORES WHERE id_professor = 1;

-- Atualizar
UPDATE PROFESSORES
SET especialidade = 'Ballet Classico'
WHERE id_professor = 1;

-- Ver DEPOIS
SELECT * FROM PROFESSORES WHERE id_professor = 1;
GO

-- ============================================
-- DELETE 1: Remover uma matricula especifica
-- ============================================

-- Ver ANTES
SELECT * FROM ALUNO_MODALIDADE WHERE id_aluno = 8;

-- Deletar
DELETE FROM ALUNOS
WHERE id_aluno = 22 AND id_modalidade = 1;

-- Ver DEPOIS
SELECT * FROM ALUNO_MODALIDADE WHERE id_aluno = 8;
GO

-- ============================================
-- DELETE 2: Remover matriculas antigas
-- ============================================

-- Ver quantas tem ANTES
SELECT COUNT(*) AS total FROM ALUNO_MODALIDADE WHERE data_matricula < '2025-02-01';

-- Deletar
DELETE FROM ALUNO_MODALIDADE
WHERE data_matricula < '2025-02-01';

-- Ver quantas tem DEPOIS
SELECT COUNT(*) AS total FROM ALUNO_MODALIDADE WHERE data_matricula < '2025-02-01';
GO

-- ============================================
-- DELETE 3: Remover aluno sem matriculas
-- ============================================

-- Primeiro, inserir um aluno sem matricula para testar
INSERT INTO ALUNOS (nome, data_nascimento, telefone, email, cpf) 
VALUES ('Teste Aluno', '2010-01-01', '(11) 99999-9999', 'teste@email.com', '99999999999');

-- Ver alunos sem matricula
SELECT a.* FROM ALUNOS a
LEFT JOIN ALUNO_MODALIDADE am ON a.id_aluno = am.id_aluno
WHERE am.id_aluno IS NULL;

-- Deletar alunos sem matricula
DELETE FROM ALUNOS
WHERE id_aluno NOT IN (SELECT DISTINCT id_aluno FROM ALUNO_MODALIDADE);

-- Verificar se foi deletado
SELECT a.* FROM ALUNOS a
LEFT JOIN ALUNO_MODALIDADE am ON a.id_aluno = am.id_aluno
WHERE am.id_aluno IS NULL;
GO

PRINT 'Updates e Deletes executados!';
GO