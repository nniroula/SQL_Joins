-- write your queries here
--joins_exercise=# SELECT * FROM owners FULL JOIN vehicles ON owners.id = vehicles.id ORDER BY vehicles.id;
SELECT * FROM owners FULL JOIN vehicles ON owners.id = vehicles.id ORDER BY vehicles.id; -- then do this
SELECT * FROM owners FULL JOIN vehicles ON owners.id = owner_id; -- because above gives owner_id column