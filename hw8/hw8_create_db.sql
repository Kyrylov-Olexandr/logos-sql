CREATE DATABASE it_system;
USE it_system;

CREATE TABLE IF NOT EXISTS project(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40) NOT NULL UNIQUE,
    details VARCHAR(200) DEFAULT "No details",
    budget FLOAT,
    importance INT DEFAULT 0
);
CREATE TABLE IF NOT EXISTS team_lead (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    surname VARCHAR(40) NOT NULL,
    age INT NOT NULL,
    project_id INT,
    FOREIGN KEY(project_id) REFERENCES project(id)
);
CREATE TABLE IF NOT EXISTS team (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
	size INT,
    class INT,
    team_lead_id INT NOT NULL,
    FOREIGN KEY (team_lead_id) REFERENCES team_lead(id)
);
CREATE TABLE IF NOT EXISTS task(
	id iNT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40) NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS project_task (
	project_id INT NOT NULL,
    task_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY(project_id, task_id),
    FOREIGN KEY(project_id) REFERENCES project(id),
    FOREIGN KEY(task_id) REFERENCES task(id)
);

INSERT INTO project(name, details, budget, importance) VALUES
('Adidas', 'Vestibulum ante ipsum primis in faucibus orci luctus', 20000, 2),
('Online store', 'Curabitur ut finibus lacus. Donec dui arcu, dictum non aliquam et', 9000, 1),
('Bank Project','asdasdassdaasdsaddsadsadsa', 100000, 3);

INSERT INTO team_lead(name, surname, age, project_id) VALUES
('Андрій', 'Мартинів', 45, 1),
('Alex', 'Martin', 20, 3),
('Bill', 'Jonsons', 23, 2);

INSERT INTO team(name, size, class, team_lead_id) VALUES
('dream-team', 5, 1, 2),
('black-star', 7, 2, 1);

INSERT INTO task (name) VALUES 
("First task"),
("Second task"),
("Find Java Developer");

INSERT INTO project_task (project_id, task_id) VALUES
(1,1),
(1,2),
(2,3),
(2,1);
INSERT INTO team(name, size, class, team_lead_id) VALUE ("First team", 4, 5, 3);