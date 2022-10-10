-- Usando o db Filmes --
use Filmes;

-- 1) Buscar o Nome e o Ano dos Filmes --
select Nome, Ano from Filmes;

-- 2) Buscar o Nome e o Ano dos Filmes ordenados em ordem crescente pelo Ano --
select Nome, Ano from Filmes order by Ano asc;

-- 3) Buscar pelo Filme 'De Volta para o Futuro', trazendo o Nome, Ano e a Dura��o --
select Nome, Ano, Duracao from Filmes where Nome = 'De Volta para o Futuro';

-- 4) Buscar os Filmes lan�ados no ano de 1997 --
select * from Filmes where Ano = 1997;

-- 5) Buscar os Filmes lan�ados AP�S o ano 2000 --
select * from Filmes where Ano > 2000;

-- 6) Buscar os Filmes com Dura��o > 100 e < 150, ordenados em ordem crescente de Dura��o --
select * from Filmes where Duracao > 100 and Duracao < 150 order by Duracao asc;

-- 7) Buscar a quantidade de Filmes lan�ados por ano, ordenados pela Dura��o em ordem decrescente --
select Ano, COUNT(Duracao) as Quantidade from Filmes group by Ano order by COUNT(Duracao) desc; -- Acredito que esta Query esteja errada na descri��o e seja ordenada pela quantidade de filmes por ano em ordem decrescente --

-- 8) Buscar os Atores do g�nero Masculino, retornando o PrimeiroNome e UltimoNome --
select PrimeiroNome, UltimoNome from Atores where Genero = 'M';

-- 9) Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome e ordenando pelo PrimeiroNome --
select PrimeiroNome, UltimoNome from Atores where Genero = 'F' order by PrimeiroNome;

-- 10) Buscara o Nome do Filme e o G�nero --
select Filmes.Nome, Generos.Genero from Filmes 
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
inner join Generos on FilmesGenero.IdGenero = Generos.Id;

-- 11) Buscar o Nome do Filme e o G�nero do tipo Mist�rio --
select Filmes.Nome, Generos.Genero from Filmes
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
inner join Generos on FilmesGenero.IdGenero = Generos.Id
where Generos.Genero = 'Mist�rio';

-- 12) Buscar o Nome do Filme e os Atores, trazendo o PrimeiroNome, UltimoNome e seu Papel --
select Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel from Filmes
inner join ElencoFilme on ElencoFilme.IdFilme = Filmes.Id
inner join Atores on ElencoFilme.IdAtor = Atores.Id;