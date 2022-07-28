--Questão 1
SELECT COUNT("endDate")
AS "currentExperiences"
FROM experiences;

--Questão 2
SELECT "userId", COUNT("userId") AS educations
FROM educations
GROUP BY "userId";

--Questão 3
SELECT u.name, COUNT("writerId") as "testimonialCount"
FROM testimonials
JOIN users u
ON "writerId" = u.id
WHERE "writerId" = 435
GROUP BY u.name, "writerId";

--Questão 4
SELECT MAX(salary) AS "maximumSalary", r.name AS role
FROM jobs j
JOIN roles r
ON j."roleId" = r.id
WHERE j.active = true
GROUP BY r.name
ORDER BY MAX(salary) ASC;