SELECT s.fullname, g.grade
FROM students s
JOIN grades g ON s.id = g.student_id
JOIN groups gr ON s.group_id = gr.id
JOIN disciplines d ON g.discipline_id = d.id
WHERE gr.id = 1 AND d.id = 1
AND g.date_of = (SELECT MAX(date_of) FROM grades WHERE discipline_id = d.id);


  
 
