SELECT t.fullname, d.name, ROUND(AVG(g.grade), 2) AS average_grade  
FROM grades g  
JOIN disciplines d ON g.discipline_id  = d.id 
JOIN teachers t  
WHERE d.teacher_id  = 2 
GROUP BY d.name;

  
 
