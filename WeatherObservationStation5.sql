/* Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
*/

SELECT * 
FROM(SELECT DISTINCT CITY, LENGTH(CITY)
     FROM STATION
     ORDER BY LENGTH(CITY) ASC, CITY ASC)
     WHERE ROWNUM = 1 UNION     
    SELECT * 
    FROM(SELECT DISTINCT CITY,LENGTH(CITY) 
         FROM STATION
         ORDER BY LENGTH(CITY) DESC, CITY DESC)
         WHERE ROWNUM = 1;