use hostel

/* 
1. Use SELECT * and Specific Columns 
*/

/* SELECT * – Display all columns from the hostel table */
SELECT * FROM hostel;

/* Select specific columns – Hostel name, type, and capacity */
SELECT name, hostel_type, capacity FROM hostel;

/* 
2. Apply WHERE, AND, OR, LIKE, BETWEEN 
*/

/* WHERE – Retrive all Girls hostels */
SELECT * FROM hostel
WHERE hostel_type = 'Girls';

/* WHERE – Retrive the names of all Girls hostels */
SELECT name FROM hostel
WHERE hostel_type = 'Girls';

/* AND – Retrive the hostels with more than 3 rooms and capacity over 15 */
SELECT name, no_of_rooms, capacity FROM hostel
WHERE no_of_rooms > 3 AND capacity > 15;

/* OR – Retrive the hostels that are either for Boys or have capacity less than 20 */
SELECT name, hostel_type, capacity FROM hostel
WHERE hostel_type = 'Boys' OR capacity < 20;

/* LIKE – Retrive the hostels with facility containing the word 'Mess' */
SELECT name, facility FROM hostel
WHERE facility LIKE '%Mess%';

select * from hostel;

/* BETWEEN – Retrive the hostels with capacity between 15 and 25 */
SELECT name, capacity FROM hostel
WHERE capacity BETWEEN 15 AND 25;

/*
3. Sort with ORDER BY
*/

/* Retrieve the list of hostels arranged in ascending order by names */
SELECT name, hostel_type FROM hostel
ORDER BY name ASC;

/* Retrieve the list of hostels arranged in descending order by number of rooms */
SELECT name, no_of_rooms FROM hostel
ORDER BY no_of_rooms DESC;


/* 
LIMIT 
*/

/* Retrive the first 3 hostels from the table */
SELECT * FROM hostel
LIMIT 3;

/* Retrive name and capacity of top 2 hostels with highest capacity */
SELECT name, capacity FROM hostel
ORDER BY capacity DESC
LIMIT 2;

/* Retrive top 1 Boys hostel based on room count */
SELECT name, no_of_rooms FROM hostel
WHERE hostel_type = 'Boys'
ORDER BY no_of_rooms DESC
LIMIT 1;









