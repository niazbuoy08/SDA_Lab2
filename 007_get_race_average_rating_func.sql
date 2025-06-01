-- Task 4(b): Create function to retrieve average_rating for a given race

DELIMITER $$

CREATE FUNCTION get_race_average_rating(p_race_id INT)
RETURNS FLOAT
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE avg_rating FLOAT;

    SELECT average_rating INTO avg_rating
    FROM race
    WHERE race_id = p_race_id;

    RETURN avg_rating;
END$$

DELIMITER ;
