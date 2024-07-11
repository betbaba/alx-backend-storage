--A SQL script that creates a stored procedure ComputeAverageScoreForUser 

CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id INT)
BEGIN 
	DECLARE avg_score FLOAT;
	SET avg_score = (SELECT AVG(score) FROM corrections AS av WHERE user_id=av.user_id);
	UPDATE users SET average_score = avg_score WHERE id=user_id;
END;
