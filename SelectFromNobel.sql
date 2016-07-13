SELECT FROM NOBEL

SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950
 
 SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'
   
   SELECT yr, subject FROM nobel
WHERE winner LIKE 'Albert Einstein'

SELECT winner FROM nobel
WHERE subject = 'Peace' AND yr>1999

SELECT yr, subject, winner FROM nobel
WHERE subject = 'Literature' 
AND yr BETWEEN '1980' AND '1989'

SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter')
                  
SELECT winner FROM nobel
WHERE winner LIKE 'John %'

SELECT * FROM nobel
WHERE subject IN('Physics') AND yr IN('1980')
OR subject IN('Chemistry') AND yr IN('1984')

SELECT * FROM nobel
WHERE yr = '1980' AND subject != 'Chemistry' AND subject != 'Medicine'

SELECT * FROM nobel
WHERE yr<1910 AND subject IN('Medicine')
OR yr>2003 AND subject IN('Literature')

SELECT * FROM nobel
WHERE winner LIKE 'Peter Grünberg' 

SELECT * FROM nobel
WHERE winner LIKE 'Eugene O''neill'

SELECT winner, yr, subject FROM nobel
WHERE winner LIKE 'Sir%'

--Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'), subject, winner

