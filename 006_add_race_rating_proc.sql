-- Task 4(a): Create procedure to add a rating for a race and update timestamp
-- Also calls recalculate_race_ratings() to update average

DELIMITER $$

CREATE PROCEDURE add_race_rating(
    IN p_car_id INT,
    IN p_race_id INT,
    IN p_rating_value INT
)
BEGIN
    -- Update the race_participation entry with rating and timestamp
    UPDATE race_participation
    SET rating = p_rating_value,
        rating_timestamp = CURRENT_TIMESTAMP
    WHERE car_id = p_car_id AND race_id = p_race_id;

    -- Recalculate average ratings
    CALL recalculate_race_ratings();
END$$

DELIMITER ;
