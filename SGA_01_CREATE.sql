-- ============================================
-- SCRIPT SIMPLES: CRIAR BANCO E TABELAS
-- Escola de Dança - Versão Simplificada
-- ============================================

-- Criar o banco de dados
CREATE DATABASE Escola_de_danca;
GO

-- Usar o banco
USE Escola_de_danca;
GO

-- ============================================
-- CRIAR TABELAS
-- ============================================

-- Tabela de PROFESSORES
CREATE TABLE PROFESSORES (
    id_professor INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100),
    especialidade VARCHAR(50)
);

-- Tabela de ALUNOS
CREATE TABLE ALUNOS (
    id_aluno INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100),
    cpf VARCHAR(11) UNIQUE NOT NULL
);

-- Tabela de MODALIDADE
CREATE TABLE MODALIDADE (
    id_modalidade INT IDENTITY(1,1) PRIMARY KEY,
    nome_modalidade VARCHAR(50) NOT NULL,
    horario VARCHAR(20) NOT NULL,
    nivel_turma VARCHAR(20) NOT NULL,
    id_professor INT NOT NULL,
    FOREIGN KEY (id_professor) REFERENCES PROFESSORES(id_professor)
);

-- Tabela de ALUNO_MODALIDADE (matrículas)
CREATE TABLE ALUNO_MODALIDADE (
    id_aluno_modalidade INT IDENTITY(1,1) PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_modalidade INT NOT NULL,
    data_matricula DATE NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES ALUNOS(id_aluno),
    FOREIGN KEY (id_modalidade) REFERENCES MODALIDADE(id_modalidade)
);

PRINT 'Tabelas criadas com sucesso!';
GO