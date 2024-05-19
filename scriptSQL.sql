use cadastro;

-- Fazer uma lista com o nome de todas as "gafanhotas".
select nome from gafanhotos
where sexo = "F";

-- Uma lista com os dados de todos aqueles que nasceram entre 01/Jan/2000 e 31/Dez/2015.
select nome, nascimento from gafanhotos
where nascimento between "2000-01-01" 
and "2015-12-31"
order by nascimento;

-- Uma lista com o nome de todos os homem que trabalham como programadores;
select nome from gafanhotos
where sexo = "M" 
and profissao like "%programador%"
order by nome;

-- Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra J;
select * from gafanhotos
where sexo = "F" 
and nacionalidade = "brasil" 
and nome like "J%";

-- Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100kg;
select nome, nacionalidade from gafanhotos
where sexo = "M"
and nome like "%silva%"
and nacionalidade != "brasil"
and peso < "100";

-- Qual é a maior altura entre gafanhotos homens que moram no Brasil?;
select max(altura) from gafanhotos
where sexo = "M" 
and nacionalidade = "brasil";

-- Qual é a média de peso dos gafanhotos cadastrados?;
select avg(peso) from gafanhotos;

-- Qual é o menor peso entre as gafanhotas mulheres que nasceram fora do Brasil e entre 01/Jan/1990 e 31/Dez/2000?
select min(peso) from gafanhotos
where sexo = "F"
and nacionalidade != "brasil"
and nascimento between "1990-01-01" and "2000-12-31";

-- Quantas gafanhotas mulheres têm mais de 1.90m de altura?
select nome, altura from gafanhotos
where sexo = "F"
and altura > "1.90"
order by altura;