SELECT s.fullname, g.grade, gr.name, d.name  
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN groups gr ON s.group_id = gr.id
JOIN disciplines d ON g.discipline_id = d.id
WHERE gr.id = 2 AND d.id = 3
ORDER BY s.fullname DESC; 

  
 
