# SQL_Exercicios
> Exercícios de SQL propostos por **Gustavo Guanabara** do *Cursoemvideo*.

## Fazer uma lista com o nome de todas as "gafanhotas".
### código:
```mysql
Select nome from gafanhotos
where sexo = "F";
```
### Retorno:
Nome|
---|
Talita Nascimento
Leila Martins
Letícia Neves
Janaína Couto
Andreia Delfino
Rosana Kunz
Josiane Dutra
Nara Matos
Ana Carolina Mendes
Monique Precivalli
Karine Ribeiro
Jarismar Andrade
Janaina Oliveira
Daniele Moledo
Ana Carolina Hernandes
Bruna Teles
Elaine Nunes
Jucinei Teixeira
Bruna Santos
Rita Pontes
Dayana Dias
Silvana Albuquerque
---
## Uma lista com os dados de todos aqueles que nasceram entre 01/Jan/2000 e 31/Dez/2015.
### código:
```mysql
select nome, nascimento from gafanhotos
where nascimento between "2000-01-01" 
and "2015-12-31"
order by nascimento;
```
### Retorno:
nome|nascimento
---|---
Denilson Barbosa da Silva|2000-01-08
Bruno Torres|2000-01-30
Diogo Padilha|2000-03-03
Philppe Oliveira|2000-05-23
Jarismar Andrade|2000-06-23
Robson Rodolpho|2000-08-08
Ana Carolina Mendes|2000-12-15
Isaias Buscarino|2001-01-07
Guilherme de Sousa|2001-05-18
Carlos Camargo|2005-02-22
Daniele Moledo|2006-08-11
Roberto Luiz Debarba|2007-01-09
Neriton Dias|2009-10-30
Marcos Dissotti|2010-01-01
Carlisson Rosa|2010-08-01
Elvis Schwarz|2011-05-07
Márcio Mello|2011-11-20
Silvio Ricardo|2012-03-12
Monique Precivalli|2013-12-30
---
## Uma lista com o nome de todos os homem que trabalham como programadores;
### código:
```mysql
select nome from gafanhotos
where sexo = "M" 
and profissao like "%programador%"
order by nome;
```
### Retorno:
nome|
---|
Allan Silva
Anderson Rafael
Andre Santini
André Schmidt
Carlos Camargo
Emerson Gabriel
Jackson Telles
Márcio Mello
Raian Porto
Ruan Valente
Silvio Ricardo
---
## Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra J;
### código:
```mysql
select * from gafanhotos
where sexo = "F" 
and nacionalidade = "brasil" 
and nome like "J%";
```
### Retorno:
id|nome|profissao|nascimento|sexo|peso|altura|nacionalidade|
---|---|---|---|---|---|---|---|
33|Jarismar Andrade|Dentista|2000-06-23|F|63.70|1.33|Brasil
---
## Uma lista com o nome e nascionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100kg;
### código:
```mysql
select nome, nacionalidade from gafanhotos
where sexo = "M"
and nome like "%silva%"
and nacionalidade != "brasil"
and peso < "100";
```
### Retorno:
nome|nacionalidade|
---|---|
Herisson Silva|EUA
---
## Qual é a maior altura entre gafanhotos homens que moram no Brasil?;
### código:
```mysql
select max(altura) from gafanhotos
where sexo = "M" 
and nacionalidade = "brasil";
```
### Retorno:
max(altura)|
---|
2.35
---
## Qual é a média de peso dos gafanhotos cadastrados?;
### código:
```mysql
select avg(peso) from gafanhotos;
```
### Retorno:
avg(peso)|
---|
73.967705
---
## Qual é o menor peso entre as gafanhotas mulheres que nasceram fora do Brasil e entre 01/Jan/1990 e 31/Dez/2000?
### código:
```mysql
select min(peso) from gafanhotos
where sexo = "F"
and nacionalidade != "brasil"
and nascimento between "1990-01-01" and "2000-12-31";
```
### Retorno:
min(peso)|
---|
35.90
---
## Quantas gafanhotas mulheres têm mais de 1.90m de altura?
### código:
```mysql
select nome, altura from gafanhotos
where sexo = "F"
and altura > "1.90"
order by altura;
```
### Retorno:
nome|altura|
---|---|
Daniele Moledo|1.99
Letícia Neves|2.00
Elaine Nunes|2.00
Ana Carolina Hernandes|2.08
Leila Martins|2.15
---
