-- 1
SELECT Nome, Ano
FROM Filmes

-- 2
SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano

-- 3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome like 'De volta para o futuro'

-- 4
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000

-- 5
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000

-- 6
-- Filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE (Duracao > 100) and (duracao < 150)
ORDER BY DURACAO

-- 7
-- Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS Qtd
FROM Filmes
GROUP BY ANO
ORDER BY Qtd DESC

-- 8
-- Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero LIKE 'M'

-- 9
--Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero LIKE 'F'
ORDER BY PrimeiroNome

-- 10 - Buscar o nome do filme e o gêneros
SELECT Filmes.Nome, Generos.Genero
FROM Filmes, Generos, FilmesGenero
WHERE Filmes.id = FilmesGenero.IdFilme
   AND GENEROS.Id = FilmesGenero.IdGenero

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT Filmes.Nome, Generos.Genero
FROM Filmes, Generos, FilmesGenero
WHERE Filmes.id = FilmesGenero.IdFilme
   AND GENEROS.Id = FilmesGenero.IdGenero
   AND Generos.Genero LIKE 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes, Atores, ElencoFilme
WHERE Filmes.id = ElencoFilme.IdFilme
   AND Atores.Id = ElencoFilme.IdAtor

