--Questão 1
SELECT COUNT("endDate")
AS "currentExperiences"
FROM experiences;

--Questão 2
SELECT "userId", COUNT("userId") AS educations
FROM educations
GROUP BY "userId";
