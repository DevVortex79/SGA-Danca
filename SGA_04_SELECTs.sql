
USE Escola_de_danca
GO

-- ==================================================================================================================================== --
-- BUSCA ONDE UM(A) ALUNO(A) ESPECIFICO ESTA MATRICULADO(A) - TURMA / MODALIDADE / PROFESSOR -- UTILIZA INNER JOIN E WHERE
-- ==================================================================================================================================== --

SELECT 
	A.id_aluno,
	A.nome,
	M.nome_modalidade AS Modalidade,
	P.nome AS ProfessorModalidade,
	M.nivel_turma AS Turma,
	M.horario AS HorárioAula	
FROM ALUNOS A
INNER JOIN ALUNO_MODALIDADE AM ON A.id_aluno = AM.id_aluno
INNER JOIN MODALIDADE M ON AM.id_modalidade = M.id_modalidade
INNER JOIN PROFESSORES P ON M.id_professor = P.id_professor
WHERE A.id_aluno = 10

-- ==================================================================================================================================== --
-- BUSCA ALUNOS MENORES DE 18 ANOS MATRICULADOS COM TURMA / MODALIDADE / PROFESSOR -- UTILIZA TOP 25, INNER JOIN, WHERE E ORDER BY
-- ==================================================================================================================================== --

SELECT TOP 25
	A.id_aluno,
	A.nome,
	A.data_nascimento AS Nascimento,
	M.nome_modalidade AS Modalidade,
	P.nome AS ProfessorModalidade,
	M.nivel_turma AS Turma,
	M.horario AS HorárioAula
FROM ALUNOS A
INNER JOIN ALUNO_MODALIDADE AM ON A.id_aluno = AM.id_aluno
INNER JOIN MODALIDADE M ON AM.id_modalidade = M.id_modalidade
INNER JOIN PROFESSORES P ON M.id_professor = P.id_professor
WHERE A.data_nascimento < '2009-01-01'
ORDER BY A.data_nascimento

-- ==================================================================================================================================== --
-- BUSCA DO NOME / EMAIL /  ESPECIALIDADE / NIVEL_TURMA -- UTILIZA WHERE 
-- ==================================================================================================================================== --

SELECT 
	PROF.id_professor,
	PROF.nome,
	PROF.email,
	PROF.especialidade,
	MD.nivel_turma
FROM PROFESSORES PROF
INNER JOIN MODALIDADE MD ON PROF.id_professor = MD.id_professor
WHERE MD.nivel_turma = 'AVANCADO'

-- ==================================================================================================================================== --
--BUSCA DO NOME DO ALUNO/ MODALIDADE / NOME DO PROFESSOR - UTILIZA INNER JOIN
-- ==================================================================================================================================== --

SELECT 
	A.nome AS Aluno,
	M.nome_modalidade AS Modalidade,
	P.nome AS Professor
FROM ALUNOS A
INNER JOIN ALUNO_MODALIDADE AM ON A.id_aluno = AM.id_aluno
INNER JOIN MODALIDADE M ON AM.id_modalidade = M.id_modalidade
INNER JOIN PROFESSORES P ON M.id_professor = P.id_professor

