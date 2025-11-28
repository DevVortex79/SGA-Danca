# SGA-Danca
# 🩰 Sistema de Gerenciamento - Escola de Dança

Este é um projeto de banco de dados desenvolvido para gerenciar uma escola de dança, incluindo cadastro de professores, alunos, modalidades e matrículas.

## 📋 Sobre o Projeto

O sistema foi criado como parte dos meus estudos em **SQL Server** e banco de dados relacionais. Ele permite o controle completo de uma escola de dança, desde o cadastro de professores e alunos até o gerenciamento de turmas e matrículas.

## 🎯 Funcionalidades

- Cadastro de professores com suas especialidades
- Registro de alunos com informações pessoais
- Criação de modalidades de dança (Ballet, Jazz, Hip Hop, etc.)
- Sistema de matrícula relacionando alunos às modalidades
- Consultas para visualizar informações integradas

## 🗂️ Estrutura do Banco de Dados

O banco possui 4 tabelas principais:

### PROFESSORES
- `id_professor` (chave primária)
- `nome`
- `telefone`
- `email`
- `especialidade`

### ALUNOS
- `id_aluno` (chave primária)
- `nome`
- `data_nascimento`
- `telefone`
- `email`
- `cpf` (único)

### MODALIDADE
- `id_modalidade` (chave primária)
- `nome_modalidade`
- `horario`
- `nivel_turma` (Iniciante, Intermediário, Avançado)
- `id_professor` (chave estrangeira)

### ALUNO_MODALIDADE
- `id_aluno_modalidade` (chave primária)
- `id_aluno` (chave estrangeira)
- `id_modalidade` (chave estrangeira)
- `data_matricula`

## 📁 Arquivos do Projeto

```
├── SGA_01_CREATE.sql          # Criação do banco e tabelas
├── SGA_02_INSERT.sql          # Inserção de dados de teste
├── SGA_03_UPDATE_DELETE.sql   # Exemplos de atualização e exclusão
└── SGA_04_SELECTs.sql         # Consultas complexas
```

## 🚀 Como Usar

### 1. Criar o Banco de Dados
Execute o script `SGA_01_CREATE.sql` para criar o banco e todas as tabelas:
```sql
-- Cria o banco Escola_de_danca e suas tabelas
```

### 2. Inserir Dados
Execute o script `SGA_02_INSERT.sql` para popular o banco com dados de exemplo:
- 10 professores
- 20 alunos
- 20 modalidades diferentes
- 40+ matrículas

### 3. Testar Operações
Execute `SGA_03_UPDATE_DELETE.sql` para ver exemplos de:
- Atualização de dados (UPDATE)
- Remoção de registros (DELETE)

### 4. Realizar Consultas
Use `SGA_04_SELECTs.sql` para consultas avançadas com INNER JOIN

## 💡 Exemplos de Consultas

### Buscar todas as modalidades de um aluno específico
```sql
SELECT 
    A.nome,
    M.nome_modalidade AS Modalidade,
    P.nome AS Professor,
    M.nivel_turma AS Turma
FROM ALUNOS A
INNER JOIN ALUNO_MODALIDADE AM ON A.id_aluno = AM.id_aluno
INNER JOIN MODALIDADE M ON AM.id_modalidade = M.id_modalidade
INNER JOIN PROFESSORES P ON M.id_professor = P.id_professor
WHERE A.id_aluno = 10
```

### Listar alunos menores de 18 anos
```sql
SELECT TOP 25
    A.nome,
    A.data_nascimento,
    M.nome_modalidade
FROM ALUNOS A
INNER JOIN ALUNO_MODALIDADE AM ON A.id_aluno = AM.id_aluno
INNER JOIN MODALIDADE M ON AM.id_modalidade = M.id_modalidade
WHERE A.data_nascimento < '2009-01-01'
ORDER BY A.data_nascimento
```

## 🎓 Conceitos Aprendidos

Durante o desenvolvimento deste projeto, pratiquei:

- ✅ Criação de banco de dados e tabelas
- ✅ Definição de chaves primárias e estrangeiras
- ✅ Relacionamentos entre tabelas (1:N e N:N)
- ✅ Operações CRUD (Create, Read, Update, Delete)
- ✅ Consultas com múltiplos INNER JOINs
- ✅ Uso de WHERE, ORDER BY e TOP
- ✅ Integridade referencial

## 🛠️ Tecnologias

- **SQL Server** - Sistema de gerenciamento de banco de dados
- **T-SQL** - Linguagem de consulta

## 📝 Observações

- O banco utiliza `IDENTITY(1,1)` para auto-incremento das chaves primárias
- Os dados inseridos são fictícios e apenas para fins de teste
- Algumas consultas estão comentadas em português para facilitar o entendimento

## 🤝 Contribuições

Este é um projeto de estudo, mas sugestões são sempre bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.

## 📧 Contato

Se tiver dúvidas ou sugestões sobre o projeto, fique à vontade para entrar em contato!

---

⭐ Se este projeto te ajudou de alguma forma, considere dar uma estrela!
