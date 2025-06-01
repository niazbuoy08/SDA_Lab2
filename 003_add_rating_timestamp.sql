-- Task 2(b): Add rating_timestamp column to race_participation table

ALTER TABLE race_participation
ADD COLUMN rating_timestamp TIMESTAMP;
