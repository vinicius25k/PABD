# Aula 8 — Gerenciando Cópias de Segurança no MySQL

## Objetivo
Criar cópia de segurança (dump) do banco de dados `cadastro`, de forma que qualquer pessoa consiga recriar o banco completo sem ter assistido à aula.

## Banco utilizado
- Nome: `cadastro`
- Tabelas: `cursos` e `gafanhotos`

## 1. Estrutura das Tabelas
### Tabela `cursos`
- `idcurso`: identificador único (chave primária)
- `nome`: nome do curso
- `descricao`: texto explicativo
- `carga`: carga horária
- `totulas`: total de aulas
- `ano`: ano de lançamento (padrão: 2026)

### Tabela `gafanhotos`
- `id`: identificador único (chave primária)
- `nome`: nome da pessoa
- `profissao`: profissão
- `nascimento`: data de nascimento
- `sexo`: apenas 'M' ou 'F'
- `peso`: peso em kg
- `altura`: altura em metros
- `nacionalidade`: padrão = 'Brasil'

## 2. Dados contidos no backup
- **cursos**: 3 registros → HTML5, Algoritmos, Photoshop
- **gafanhotos**: 3 registros → Diego, Maria, Joao

## 3. Como usar o arquivo de dump
### Para restaurar o banco:
1. Abra o MySQL Workbench
2. Abra o arquivo `backup_cadastro.sql`
3. Clique em **Executar (⚡)**
4. O banco será criado, tabelas montadas e dados inseridos automaticamente

### Pelo terminal:
```bash
mysql -u root -p cadastro < backup_cadastro.sql
