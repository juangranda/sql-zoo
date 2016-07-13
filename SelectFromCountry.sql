Select from Country

SELECT name, continent, population FROM world

SELECT name FROM world
WHERE population>200000000

SELECT name, GDP/population
FROM world
WHERE population>200000000

SELECT name, population/1000000
FROM world
WHERE continent LIKE 'South America'

SELECT name, population
FROM world
WHERE name ='France' 
OR name ='Germany'
OR name ='Italy'

SELECT name FROM world
WHERE name Like '%United%'

SELECT name, population, area FROM world
WHERE area>3000000 OR population >250000000

SELECT name, population, area FROM world
WHERE area>3000000 XOR population >250000000

SELECT name, ROUND(population/1000000,2), ROUND(GDP/1000000000,2)
FROM world
WHERE continent LIKE 'South America'

SELECT name, ROUND(GDP/population,-3)
FROM world
WHERE GDP>1000000000000

SELECT name,
       CASE WHEN continent='Oceania' THEN 'Australasia'
            ELSE continent END
  FROM world
 WHERE name LIKE 'N%'
 
 SELECT name, CASE 
WHEN continent = 'Europe' THEN 'Eurasia'
WHEN continent = 'Asia' THEN 'Eurasia'
WHEN continent LIKE 'North America' THEN 'America'
WHEN continent LIKE 'South America' THEN 'America'
WHEN continent LIKE 'Caribbean' THEN 'America'
ELSE continent END
FROM world
WHERE name LIKE 'B%' OR name LIKE 'A%'



