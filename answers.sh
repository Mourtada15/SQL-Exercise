# Get all the names of students
SELECT name FROM students

# Get all the data of students above 30 years old 
SELECT * FROM students WHERE Age > 30

# Get the names of the females who are 30 years old 
SELECT name FROM students WHERE Gender = "F" AND Age > 30

# Get the number of points of Alex
SELECT Points FROM students WHERE Name = "Alex"

# Adding my info
INSERT INTO students (Name, Age, Gender, Points) VALUES ("Hassan", 28, "M", 1000) 

# Increased the points of Basma 
UPDATE students SET Points = 400 WHERE name = "Basma"

# Decrease the points of Alex
UPDATE students SET Points = 200-100 WHERE name = "Alex"

# Copy Layal's data from students to graduates 
INSERT INTO graduates (name, Age, Gender, Points, graduates)
SELECT name, Age, Gender, Points, 01/01/\
FROM students
WHERE ID = 4;

# Add the graduation date previously mentioned to Layal's record in graduates
UPDATE graduates
SET Graduates = '08/09/2018'
WHERE name = 'Layal'

# Remove Layal's record from students
DELETE FROM students WHERE ID = 4

# 