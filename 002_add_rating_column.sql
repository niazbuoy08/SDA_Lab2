-- Task 2(a): Add rating column to race_participation table

ALTER TABLE race_participation
ADD COLUMN rating INT CHECK (rating BETWEEN 1 AND 5);
