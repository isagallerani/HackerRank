/* Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.

Input Format

The OCCUPATIONS table is described as follows:


Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.
*/

SELECT Doctor, Professor, Singer, Actor
FROM (SELECT ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name) as rn, name, occupation 
      FROM occupations) 
PIVOT (MAX(name) FOR occupation IN ('Doctor' as Doctor,'Professor' as Professor, 'Singer' as Singer, 'Actor' as Actor)) 
ORDER BY rn;