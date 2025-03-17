-- Dealing with Wildcards i.e. Pattern Matching or recognition, useful if you do not know the full details
 
SELECT * FROM students 
WHERE LastName LIKE "B%";    -- "b%" WILL FETCH ALL THE LAST NAME STARTING WITH B
 
SELECT * FROM students 
WHERE LastName LIKE "%W%";    -- "O%" WILL FETCH ALL THE LAST NAME STARTING WITH W
 
SELECT * FROM students 
WHERE LastName LIKE "%ITE";    -- "O%" WILL FETCH ALL THE LAST NAME STARTING WITH ITE
 
-- Altering an existing table 
ALTER Table Students 
ADD Subject varchar(40);
-- Checking To See If Changes Have Been Made 
SELECT * FROM Students;
 
 
-- Update Columns Called Subject (Old)
UPDATE students
SET subject = "English";
 
-- Changing Only Caleb's Subject
UPDATE students
SET subject = "SQL"
WHERE StudentID = 3;