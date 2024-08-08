# Celestial Bodies Database
This project created a database of celestial bodies in postgresql.

There were also instructions and constraints to follow throughout the completion of the project.

# Instructions
Log in to PostgreSQL with psql to create your database. Make all the tests pass to complete the project.

This project was completed on CodeRoad via Visual Studio Code.

# Constraints
- You should create a database named universe

- Be sure to connect to your database with \c universe. Then, you should add tables named galaxy, star, planet, and moon

- Each table should have a primary key

- Each primary key should automatically increment

- Each table should have a name column

- You should use the INT data type for at least two columns that are not a primary or foreign key

- You should use the NUMERIC data type at least once

- You should use the TEXT data type at least once

- You should use the BOOLEAN data type on at least two columns

- Each "star" should have a foreign key that references one of the rows in galaxy

- Each "planet" should have a foreign key that references one of the rows in star

- Each "moon" should have a foreign key that references one of the rows in planet

- Your database should have at least five tables

- Each table should have at least three rows

- The galaxy and star tables should each have at least six rows

- The planet table should have at least 12 rows

- The moon table should have at least 20 rows

- Each table should have at least three columns

- The galaxy, star, planet, and moon tables should each have at least five columns

- At least two columns per table should not accept NULL values

- At least one column from each table should be required to be UNIQUE

- All columns named name should be of type VARCHAR

- Each primary key column should follow the naming convention table_name_id. For example, the moon table should have a primary key column named moon_id

- Each foreign key column should have the same name as the column it is referencing

# CodeRoad
The finished code can be found at [Database Finished SQL Code](https://github.com/user-attachments/files/16552696/Database.Finished.SQL.Code.txt)

The completed tables can be found here as well [Completed Tables](https://github.com/pchung6/Celestial-Bodies-Database/blob/54d022a0b18193f8436e330abf553f3b737f8b5e/Completed%20Tables)
# Completion
Here are the screenshots of the passed test on CodeRoad and the completed project on free code camp.

![Passed Test](https://github.com/user-attachments/assets/b0d9aa68-82f5-45d8-b460-2ac3ec9d0fe8)

![Completed Project](https://github.com/user-attachments/assets/9c67645a-32db-4215-83c1-98615fe1fe02)
