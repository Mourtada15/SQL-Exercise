# 1- Get all the names of students
SELECT name FROM students

# 2- Get all the data of students above 30 years old 
SELECT * FROM students WHERE Age > 30

# 3- Get the names of the females who are 30 years old 
SELECT name FROM students WHERE Gender = "F" AND Age > 30

# 4- Get the number of points of Alex
SELECT Points FROM students WHERE Name = "Alex"

# 5- Adding my info
INSERT INTO students (Name, Age, Gender, Points) VALUES ("Hassan", 28, "M", 1000) 

# 6- Increased the points of Basma 
UPDATE students SET Points = 400 WHERE name = "Basma"

# 7- Decrease the points of Alex
UPDATE students SET Points = 200-100 WHERE name = "Alex"
