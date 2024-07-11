-- procedure AddBonus
-- that adds a new correction for a student

CREATE PROCEDURE AddBonus(IN user_id INT, IN project_name VARCHAR(255), IN score FLOAT)
BEGIN
	DECLARE project_id INT;

	-- check if project id exists
        SELECT id INTO project_id FROM projects WHERE name = project_name;

	IF project_id IS NULL THEN
		INSERT INTO projects(name) VALUES(project_name);
		SET project_id = LAST_INSERT_ID();
	END IF;

        -- inserto into corrections table
	INSERT INTO corrections(user_id, project_name, score) VALUES(user_id, project_name, score);
END;

