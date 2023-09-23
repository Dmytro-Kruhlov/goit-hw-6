SELECT ROUND(AVG(g.grade), 2) AS avg_grade
FROM grades g
JOIN disciplines d ON g.discipline_id = d.id
JOIN students s ON g.student_id = s.id
WHERE d.teacher_id = 5 AND s.id = 50;


  
 
