select * FROM student WHERE CourseID IS NULL OR Forenames IS NULL OR DateofBirth IS NULL;
SELECT *, CASE WHEN courseID IS NULL AND Forenames IS NULL AND DateOfBirth IS NULL THEN 'All three columns are null' WHEN courseID IS NULL AND Forenames IS NULL THEN 'where courseID and Forenames are null' WHEN courseID IS NULL THEN 'Only courseID is null' ELSE 'No columns have null' END AS Null_status FROM student;
-- we aretrying to find null value sinside courseappliedfor column between teh dates 2020-04-01 and 2020-07-31
 
SELECT * FROM application
WHERE CourseAppliedFor IS NULL
AND DateOfApplication BETWEEN '2020-04-01' AND '2020-07-31'; -- Dates should be put inside quotes.