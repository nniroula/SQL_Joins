-- write your queries here
--1. joins_exercise=# SELECT * FROM owners FULL JOIN vehicles ON owners.id = vehicles.id ORDER BY vehicles.id;
SELECT * FROM owners FULL JOIN vehicles ON owners.id = vehicles.id ORDER BY vehicles.id; -- then do this
SELECT * FROM owners FULL JOIN vehicles ON owners.id = owner_id; -- because above gives owner_id column

--2. 
-- get insight from this command:  SELECT first_name, last_name, COUNT(owner_id) FROM owners JOIN vehicles ON owners.id = vehicles.id GROUP BY (first_name, last_name) ORDER BY first_name;
-- then do this
SELECT first_name, last_name, COUNT(owner_id) FROM owners JOIN vehicles ON owners.id = owner_id GROUP BY (first_name, last_name) ORDER BY first_name asc;

--3. do this then do next SELECT first_name, last_name, AVG(price), COUNT(owner_id) FROM owners JOIN vehicles ON owners.id = owner_id GROUP BY (first_name, last_name) ORDER BY first_name asc;
-- joins_exercise=# SELECT first_name, last_name, ROUND(AVG(price)), COUNT(owner_id) FROM owners JOIN vehicles ON owners.id = owner_id GROUP BY (first_name, last_name) HAVING COUNT(owner_id) > 1 AND AVG(price) > 10000  ORDER BY first_name asc;
SELECT first_name, last_name, ROUND(AVG(price)), COUNT(owner_id) FROM owners JOIN vehicles ON owners.id = owner_id GROUP BY (first_name, last_name) HAVING COUNT(owner_id) > 1 AND AVG(price) > 10000  ORDER BY first_name desc;
