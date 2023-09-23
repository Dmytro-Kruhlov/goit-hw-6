SELECT DISTINCT d.name AS discipline_name
FROM students s
JOIN grades g ON s.id = g.student_id
JOIN disciplines d ON g.discipline_id = d.id
WHERE s.id = 2 AND d.teacher_id = 3;


  
 
