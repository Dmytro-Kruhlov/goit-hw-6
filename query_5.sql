SELECT t.fullname AS teacher, d.name AS discipline_name 
FROM disciplines d
JOIN teachers t 
WHERE d.teacher_id = t.id
ORDER BY teacher DESC;

SELECT t.fullname AS teacher, d.name AS discipline_name
FROM disciplines d
JOIN teachers t ON t.id = d.teacher_id
WHERE d.teacher_id = 2;
  
 
