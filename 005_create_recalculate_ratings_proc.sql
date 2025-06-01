-- Task 3(b): Create stored procedure to recalculate average race ratings

DELIMITER $$

CREATE PROCEDURE recalculate_race_ratings()
BEGIN
    UPDATE race r
    JOIN (
        SELECT race_id, AVG(rating) AS avg_rating
        FROM race_participation
        WHERE rating IS NOT NULL
        GROUP BY race_id
    ) rp ON r.race_id = rp.race_id
    SET r.average_rating = rp.avg_rating;
END$$

DELIMITER ;
