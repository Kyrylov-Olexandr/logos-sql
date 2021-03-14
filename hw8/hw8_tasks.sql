USE it_system;
-- 1
SELECT * FROM team_lead WHERE age < 25;
-- 2
SELECT * FROM project WHERE name LIKE '%la' AND budget > 10000;
-- 3
SELECT * FROM team ORDER BY class ASC;
-- 4
SELECT * FROM project WHERE budget = (SELECT MAX(budget) FROM project);
-- 5
SELECT COUNT(class) FROM team;
-- 6
SELECT SUM(budget) FROM project; 
-- 7
SELECT * FROM team WHERE size BETWEEN 10 AND 20;
-- 8
ALTER TABLE team_lead RENAME COLUMN age TO team_lead_age;
-- 9
SELECT team.name FROM team 
JOIN team_lead ON team.team_lead_id = team_lead.id
WHERE team_lead.name = "Андрій";
-- 10
SELECT task.name FROM task
JOIN project_task ON task.id = project_task.task_id
JOIN project ON project_task.project_id = project.id
WHERE project.name = 'Adidas';
-- 11
SELECT project.name FROM project
JOIN project_task ON project.id = project_task.project_id
JOIN task ON project_task.task_id = task.id
WHERE task.name = 'Find Java Developer';
-- 12
SELECT team.name FROM team
JOIN team_lead ON team.team_lead_id = team_lead.id
JOIN project ON project.id = team_lead.project_id
WHERE project.name = 'Bank Project';
-- 13 
SELECT project.name FROM project
JOIN team_lead ON project.id = team_lead.project_id
JOIN team ON team.team_lead_id = team_lead.id
WHERE team.name = 'First team';
-- 14
SELECT team_lead.name, team_lead.surname FROM team_lead
JOIN project on team_lead.project_id = project.id
WHERE project.name = 'Online store';




