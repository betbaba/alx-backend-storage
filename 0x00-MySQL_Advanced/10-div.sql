-- divides (and returns) the first by the second number 
-- or returns 0 if the second number is equal to 0

DELIMITER $$
DROP FUNCTION IF EXISTS SafeDiv;
CREATE FUNCTION SafeDiv(a INT, b INT)
RETURN INT
BEGIN
	DECLARE ans FLOAT;
	IF b = 0 THEN
		SET ans = 0;
	ELSE
		SET ans = a / b;
	END IF;
	RETURN ans;
END;
$$
