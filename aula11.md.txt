# Aula 11 - SELECT (Parte 1)

O comando SELECT é usado para consultar e recuperar dados armazenados em uma tabela do banco de dados. É o comando mais utilizado em SQL.

1. Selecionar todos os dados
Usamos o símbolo * para selecionar todas as colunas da tabela:
SELECT * FROM pessoas;
2. Selecionar colunas específicas
Em vez de pegar todas as colunas, escolhemos apenas as que precisamos:
SELECT nome, idade FROM pessoas;
3. Usar apelidos nas colunas (AS)
Podemos renomear as colunas no resultado usando AS:
SELECT nome AS Nome, idade AS Idade FROM pessoas;
4. Ordenar os resultados (ORDER BY)
Para classificar os dados em ordem crescente ou decrescente:
-- Ordem alfabética crescente
SELECT * FROM pessoas ORDER BY nome;

-- Ordem decrescente
SELECT * FROM pessoas ORDER BY idade DESC;

5. Filtrar resultados (WHERE)
Para mostrar apenas os registros que atendem a uma condição:
-- Apenas pessoas com mais de 18 anos
SELECT * FROM pessoas WHERE idade >= 18;

-- Combinando filtro e ordenação
SELECT nome, cidade FROM pessoas WHERE cidade = 'Recife' ORDER BY nome;

Resumo:
SELECT * FROM tabela = Mostra todos os dados
SELECT coluna1, coluna2 = Mostra apenas colunas específicas
AS = Define um apelido para a coluna
ORDER BY = Ordena os resultados
WHERE = Filtra por uma condição