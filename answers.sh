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

# Create table
CREATE TABLE IF NOT EXISTS graduates (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL,
    Age INTEGER NOT NULL,
    Gender TEXT NOT NULL,
    Points INTEGER NOT NULL,
    Graduates DATE NOT NULL
);

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

# Produce a table that contains, for each employee, his/her name, company name, and company date.
CREATE TABLE my_company AS 
SELECT employees.name, employees.Company, companies.Date
FROM employees
INNER JOIN companies 
ON employees.Company = companies.Name ;

# Find the name of employees that work in companies made before 2000.
SELECT name FROM my_company WHERE date < 2000

# Find the name of company that has a graphic designer.
SELECT Company FROM employees WHERE Role = "Graphic Designer"
