NAMES

--Countries that start with Y
SELECT name FROM world
  WHERE name LIKE 'Y%'
  
--Countries that end with Y
  SELECT name FROM world
  WHERE name LIKE '%Y'
  
--Countries that contain the letter x
  SELECT name FROM world
  WHERE name LIKE '%X%'
  
--Countries that end with LAND
  SELECT name FROM world
  WHERE name LIKE '%LAND'

--Countries that start with Z and end with IA  
  SELECT name FROM world
  WHERE name LIKE 'C%ia'
 
--Countries that contain OO (Cameroon) 
  SELECT name FROM world
  WHERE name LIKE '%oo%'
  
--Find the countries that have three or more a in the name
  SELECT name FROM world
  WHERE name LIKE '%a%a%a%'
 
--Find the countries that have "t" as the second character. 
  SELECT name FROM world
 WHERE name LIKE '_t%'

--Find the countries that have "t" as the second character.
SELECT name FROM world
 WHERE name LIKE '%o__o%'

--Find the countries that have exactly four characters. 
 SELECT name FROM world
 WHERE name LIKE '____'

--Find the country where the name is the capital city. 
 SELECT name
  FROM world
 WHERE name LIKE capital

--Find the country where the capital is the country plus "City". 
           SELECT name
           FROM world
           WHERE capital LIKE concat(name, '%City%')
 
          --OR--
          SELECT name
          FROM world
          WHERE capital = concat(name,' City')

--Find the capital and the name where the capital includes the name of the country. 
 SELECT capital, name
FROM world
WHERE capital LIKE concat(name, '%')

--Find the capital and the name where the capital is an extension of name of the country.
--You should include Mexico City as it is longer than Mexico. You should not include Luxembourg as the capital is the same as the country.
SELECT name, capital
FROM world
WHERE capital LIKE concat(name, '_%')

--For Monaco-Ville the name is Monaco and the extension is -Ville.
--Show the name and the extension where the capital is an extension of name of the country.
SELECT name, REPLACE(capital,name,'')
FROM world
WHERE capital LIKE concat(name, '_%')
  
  
