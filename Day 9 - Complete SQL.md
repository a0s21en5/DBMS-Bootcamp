# Introduction to SQL

## SQL (Structured Query Language)

SQL is a language used to interact with relational databases.

## SQL used CRUD operations to communicate with DB

CRUD is an acronym for CREATE, READ(SELECT), UPDATE, and DELETE statements in SQL

1. **CREATE**: Insert new data into a database table.
2. **READ**: Retrieve existing data from a database table.
3. **UPDATE**: Modify existing data within a database table.
4. **DELETE**: Remove specific data entries from a database table.

SQL is not a database itself but serves as the standard language for managing relational databases.

## Relational Database Management System

Relational Database Management System is software that enables the creation, management, and manipulation of relational databases based on a defined relational model. Key features include:

- Implementing a structured relational model using tables (or relations).
- Examples of Relational Database Management System include MySQL, MS SQL Server, Oracle, and IBM DB2.
- Tables (or relations) are fundamental data storage objects within Relational Database Management System.
- MySQL, for instance, is an open-source Relational Database Management System that utilizes SQL for performing CRUD operations.

## Difference between SQL and MySQL

SQL is Structured Query language used to perform CRUD operations in R-DB, while MySQL is a Relational Database Management System used to store, manage and administrate DB (provided by itself) using SQL.

## SQL vs NoSQL

### Relational Database (SQL)

- **Database Type**: SQL database
- **Data Storage**: Data is stored in tables with predefined schemas.
- **Schema**: Uses fixed or static schemas.
- **Performance**: Generally lower performance with massive volumes of data.
- **Examples**: PostgreSQL, MySQL, MS SQL Server

### Non-Relational Database (NoSQL)

- **Database Type**: NoSQL database
- **Data Storage**: Data can be stored as key-value pairs, document-based, graph databases, or wide-column stores.
- **Schema**: Uses dynamic schemas, allowing for flexibility in data structures.
- **Performance**: Designed to handle large volumes of data more efficiently.
- **Examples**: MongoDB, Cassandra, HBase

### Key Differences

- **Data Storage**: SQL databases store data in structured tables, while NoSQL databases can store data in various formats depending on the type (key-value pairs, documents, etc.).

- **Schema**: SQL databases have rigid, predefined schemas, whereas NoSQL databases allow for dynamic schemas that can evolve over time.

- **Performance**: NoSQL databases are typically optimized for scalability and performance with large datasets, making them suitable for big data applications compared to SQL databases.

- **Examples**: SQL databases include PostgreSQL, MySQL, and MS SQL Server, while NoSQL databases include MongoDB, Cassandra, and HBase, each tailored to different data storage and retrieval needs.

## SQL Data Types

In SQL databases, data is stored in tables where each column is defined with a specific data type that determines the kind of data it can hold. SQL supports various data types, categorized into strings, integers, decimals, and more.

### String Data Types

- **CHAR(size)**: Fixed-length string from 0 to 255 characters.
- **VARCHAR(size)**: Variable-length string from 0 to 255 characters.
- **TINYTEXT**: String with a maximum length of 255 characters.
- **TEXT**: String with a maximum length of 65,535 characters.
- **BLOB**: Binary large object, storing up to 65,535 bytes.
- **MEDIUMTEXT**: String with a maximum length of 16,777,215 characters.
- **MEDIUMBLOB**: Binary large object, storing up to 16,777,215 bytes.
- **LONGTEXT**: String with a maximum length of 4,294,967,295 characters.
- **LONGBLOB**: Binary large object, storing up to 4,294,967,295 bytes.

### Integer Data Types

- **TINYINT**: Integer from -128 to 127.
- **SMALLINT**: Integer from -32,768 to 32,767.
- **MEDIUMINT**: Integer from -8,388,608 to 8,388,607.
- **INT**: Integer from -2,147,483,648 to 2,147,483,647.
- **BIGINT**: Integer from -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807.

### Decimal Data Types

- **FLOAT**: Floating-point number with up to 7 significant digits.
- **DOUBLE**: Double-precision floating-point number with up to 15 significant digits.

### Additional Details

- **Size hierarchy**: TINY < SMALL < MEDIUM < INT < BIGINT.
- **Variable length**: Variable-length data types like VARCHAR are preferred for storing data that varies in length, optimizing storage space.
- **Unsigned values**: Some integer types can be declared as unsigned (e.g., `INT UNSIGNED`), allowing them to store only non-negative numbers, effectively doubling their range of positive values.

### Variable datatype

Variable datatypes in SQL (e.g., `VARCHAR`, `VARBINARY`, `TEXT`) store variable-length data like strings or binary data. They accommodate varying data lengths across entries, optimizing storage efficiency.

### Fixed datatype

Fixed datatypes in SQL (e.g., `CHAR`, `BINARY`, `DATE`) store data of fixed lengths, ensuring consistent storage size per entry. They are ideal when precise data size is known, optimizing storage and retrieval.

### Advanced datatype - JSON

JSON (JavaScript Object Notation) in SQL stores semi-structured or unstructured data flexibly. It supports complex nested structures and allows easy parsing and manipulation, ideal for evolving data schemas.

## Types of SQL Commands

## DDL (Data Definition Language)

DDL commands are used for defining the structure of the database.

### CREATE

- **CREATE TABLE**: Create a new table.
- **CREATE DATABASE**: Create a new database.
- **CREATE VIEW**: Create a virtual table based on the result-set of a SELECT statement.

### ALTER TABLE

- Modify the structure of an existing table, such as changing column data types or adding/removing columns.

### DROP

- **DROP TABLE**: Delete a table and its data.
- **DROP DATABASE**: Delete a database and its contents.
- **DROP VIEW**: Delete a view.

### TRUNCATE

- Remove all rows from a table, but keep the table structure intact.

### RENAME

- Rename a database, table, or column.

## DRL/DQL (Data Retrieval Language / Data Query Language)

These commands are used to retrieve data from the database.

- **SELECT**: Retrieve data from one or more tables.

## DML (Data Manipulation Language)

DML commands are used for modifying data in the database.

- **INSERT**: Insert new rows into a table.
- **UPDATE**: Modify existing data in a table.
- **DELETE**: Remove rows from a table.

## DCL (Data Control Language)

DCL commands are used to control access to data within the database.

- **GRANT**: Provide specific privileges to database users.
- **REVOKE**: Remove specific privileges from database users.

## TCL (Transaction Control Language)

TCL commands manage transactions within the database.

- **START TRANSACTION**: Begin a transaction.
- **COMMIT**: Apply all changes made during the transaction and end it.
- **ROLLBACK**: Discard changes made during the transaction and end it.
- **SAVEPOINT**: Set a point within the transaction to which you can roll back.

## Managing Databases (DDL)

These commands manage databases and their structure.

- **CREATE DATABASE IF NOT EXISTS db-name;**: Create a new database if it doesn't already exist.
- **USE db-name;**: Select a database to work with.
- **DROP DATABASE IF EXISTS db-name;**: Delete a database if it exists.
- **SHOW DATABASES;**: List all databases on the server.
- **SHOW TABLES;**: List all tables in the selected database.

## DATA RETRIEVAL LANGUAGE (DRL)

1. **Syntax**: `SELECT <set of column names> FROM <table_name>;`

2. **Order of execution**: DRL commands are executed from RIGHT to LEFT.

3. **Can we use SELECT keyword without using FROM clause?**
   - Yes, using **DUAL Tables**.
   - DUAL tables are dummy tables created by MySQL, allowing users to perform certain actions without referring to user-defined tables.
   - Examples:
     - `SELECT 55 + 11;`
     - `SELECT NOW();`
     - `SELECT UCASE('hello');`

   DUAL tables are particularly useful for performing calculations or retrieving system-specific values without needing an actual table reference.

4. **WHERE Clause**
   - The `WHERE` clause is used to filter records based on specified conditions. It enables you to retrieve only those rows that meet the criteria specified after the `WHERE` keyword.
   - Example:

     ```sql
     SELECT * FROM Worker WHERE SALARY > 53000;
     ```

5. **BETWEEN Operator**
   - The BETWEEN operator selects values within a specified range. It is inclusive of the endpoints defined in the range.
   - Example:

     ```sql
     SELECT * FROM Worker WHERE SALARY BETWEEN 50000 AND 55000;
     ```

6. **IN Operator**
   - The `IN` operator reduces the need for multiple `OR` conditions by allowing you to specify multiple values in a single `WHERE` clause.
   - Example:

     ```sql
     SELECT * FROM Worker WHERE DEPARTMENT IN ('Finance','Sales')
     ```

7. **AND/OR/NOT**
   - **AND**: Combines multiple conditions where all must be true.

     ```sql
     SELECT * FROM Worker WHERE DEPARTMENT = 'Finance' AND FIRST_NAME = 'Michael'
     ```

   - **OR**: Combines multiple conditions where at least one must be true.

     ```sql
     SELECT * FROM Worker WHERE DEPARTMENT = 'Finance' OR DEPARTMENT = 'Sales'
     ```

   - **NOT**: Negates a condition.

     ```sql
     SELECT * FROM Worker WHERE DEPARTMENT NOT IN ('Finance','Sales')
     ```

8. **IS NULL**
   - The `IS NULL` operator is used to filter records where a specific column has no value (NULL).
   - Example:

     ```sql
     SELECT * FROM Worker WHERE SALARY IS NULL
     ```

9. **Pattern Searching / Wildcard (`%`, `_`)**
   - `%`: Matches any sequence of characters (including zero characters).
   - `_`: Matches exactly one character.
   - Example:

     ```sql
     SELECT * FROM customer WHERE name LIKE '%p_';
     ```

10. **ORDER BY**
    - Sorting the data retrieved using the `ORDER BY` clause.
    - `ORDER BY <column-name> DESC;` sorts in descending order.
    - `DESC` = Descending and `ASC` = Ascending.
    - Example:

      ```sql
      SELECT * FROM customer ORDER BY name DESC;
      ```

11. **DISTINCT**
    - Finds distinct values in a specified column or set of columns.
    - Syntax: `SELECT DISTINCT(col_name) FROM table_name;`
    - `GROUP BY` can also be used for the same purpose:

      ```sql
      SELECT DISTINCT DEPARTMENT FROM Worker;
      ```

      This produces the same output as the `DISTINCT` query.
    - SQL optimizes queries and understands that if you use `GROUP BY` without aggregation functions, you typically mean to retrieve distinct values.

12. **GROUP BY**
    - The `GROUP BY` clause is used to collect data from multiple records and group the result by one or more columns.
    - It is generally used in a `SELECT` statement to group rows that have the same values into summary rows.
    - Example:

      ```sql
      SELECT DEPARTMENT, COUNT(DEPARTMENT) AS NumWorkers FROM Worker GROUP BY DEPARTMENT;
      ```

      ```sql
      SELECT DEPARTMENT, SUM(SALARY) AS TotalSalary FROM Worker GROUP BY DEPARTMENT;
      ```

      ```sql
      SELECT DEPARTMENT, AVG(SALARY) AS AverageSalary FROM Worker GROUP BY DEPARTMENT;
      ```

      ```sql
      SELECT DEPARTMENT, MIN(SALARY) AS MinSalary FROM Worker GROUP BY DEPARTMENT;
      ```

      ```sql
      SELECT DEPARTMENT, MAX(SALARY) AS MaxSalary FROM Worker GROUP BY DEPARTMENT;
      ```

    - All column names mentioned in the `SELECT` statement must be repeated in the `GROUP BY` clause to successfully execute the query.
    - `GROUP BY` is often used with aggregation functions to perform actions like counting, summing, averaging, finding minimum or maximum values:
      1. `COUNT()`
      2. `SUM()`
      3. `AVG()`
      4. `MIN()`
      5. `MAX()`

13. **GROUP BY HAVING**
    - The `HAVING` clause is used in combination with the `GROUP BY` clause to filter group rows based on a specified condition.
    - It is similar to the `WHERE` clause but operates on grouped records rather than individual rows.
    - Example:

      ```sql
      SELECT DEPARTMENT FROM Worker GROUP BY DEPARTMENT HAVING COUNT(DEPARTMENT) > 3;
      ```

    - `HAVING` is used to filter groups after the `GROUP BY` operation has been performed.

14. **WHERE vs HAVING**
    - Both `WHERE` and `HAVING` clauses are used for filtering rows based on conditions.
    - `WHERE` is used to filter rows before any grouping is done.
    - `HAVING` is used to filter groups after the grouping has been applied using `GROUP BY`.
    - `HAVING` requires `GROUP BY` to be present in the query, whereas `WHERE` can be used without `GROUP BY`.
    - `WHERE` can be used with `SELECT`, `UPDATE`, and `DELETE` statements, while `GROUP BY` is typically used with `SELECT` for grouping data.

## DATA DEFINITION LANGUAGE (DDL)

1. **Primary Key**
   - A primary key (PK) uniquely identifies each record in a table.
   - It must be unique and not null.
   - Each table can have only one primary key.
   - Example:

     ```sql
     CREATE TABLE Customers (
         id INT PRIMARY KEY,
         first_name VARCHAR(50),
         last_name VARCHAR(50),
         email VARCHAR(255)
     );
     ```

2. **Foreign Key**
   - A foreign key (FK) establishes a link between two tables by referencing the primary key of another table.
   - Each relationship can have any number of foreign keys.
   - Example:

     ```sql
     CREATE TABLE Orders (
         id INT PRIMARY KEY,
         delivery_date DATE,
         order_placed_date DATE,
         cust_id INT,
         FOREIGN KEY (cust_id) REFERENCES Customers(id)
     );
     ```

3. **Unique Constraint**
   - Ensures that all values in a column (or a set of columns) are unique.
   - Null values are allowed unless specified otherwise.
   - Example:

     ```sql
     CREATE TABLE Customers (
         id INT PRIMARY KEY,
         name VARCHAR(255),
         email VARCHAR(1024) UNIQUE,
         -- Other columns
     );
     ```

4. **Check Constraint**
   - Specifies a condition that must be true for each row in a table.
   - Example:

     ```sql
     CREATE TABLE Customers (
         id INT PRIMARY KEY,
         name VARCHAR(255),
         age INT,
         CONSTRAINT age_check CHECK (age > 12),
         -- Other columns
     );
     ```

5. **Default Constraint**
   - Specifies a default value for a column when no other value is specified.
   - Example:

     ```sql
     CREATE TABLE Accounts (
         id INT PRIMARY KEY,
         account_number VARCHAR(20),
         balance DECIMAL(10, 2),
         saving_rate DOUBLE NOT NULL DEFAULT 4.25,
         -- Other columns
     );
     ```

6. **Attribute as Primary Key and Foreign Key**
   - An attribute can serve as both a primary key and a foreign key within a table, linking it to another table's primary key.
   - Example:

     ```sql
     CREATE TABLE Orders (
         id INT PRIMARY KEY,
         delivery_date DATE,
         order_placed_date DATE,
         cust_id INT,
         FOREIGN KEY (cust_id) REFERENCES Customers(id)
     );
     ```

## ALTER OPERATIONS

1. **Changes Schema**
2. **ADD**
    1. Add new column.
    2. `ALTER TABLE table_name ADD new_col_name datatype, ADD new_col_name_2 datatype;`
    3. e.g., `ALTER TABLE customer ADD age INT NOT NULL;`
3. **MODIFY**
    1. Change datatype of an attribute.
    2. `ALTER TABLE table_name MODIFY col_name col_datatype;`
    3. e.g., `VARCHAR` TO `CHAR`:
        `ALTER TABLE customer MODIFY name CHAR(1024);`
4. **CHANGE COLUMN**
    1. Rename column name.
    2. `ALTER TABLE table_name CHANGE COLUMN old_col_name new_col_name new_col_datatype;`
    3. e.g., `ALTER TABLE customer CHANGE COLUMN name customer_name VARCHAR(1024);`
5. **DROP COLUMN**
    1. Drop a column completely.
    2. `ALTER TABLE table_name DROP COLUMN col_name;`
    3. e.g., `ALTER TABLE customer DROP COLUMN middle_name;`
6. **RENAME**
    1. Rename table name itself.
    2. `ALTER TABLE table_name RENAME TO new_table_name;`
    3. e.g., `ALTER TABLE customer RENAME TO customer_details;`

## DATA MANIPULATION LANGUAGE (DML)

1. **INSERT**
    1. `INSERT INTO table_name (col1, col2, col3) VALUES (v1, v2, v3), (val1, val2, val3);`

2. **UPDATE**
    1. `UPDATE table_name SET col1 = 1, col2 = 'abc' WHERE id = 1;`
    2. Update multiple rows e.g.,
        1. `UPDATE student SET standard = standard + 1;`
    3. **ON UPDATE CASCADE**
        1. Can be added to the table while creating constraints. Suppose there is a situation where we have two tables such that the primary key of one table is the foreign key for another table. If we update the primary key of the first table, then using the `ON UPDATE CASCADE` foreign key of the second table automatically gets updated.

3. **DELETE**
    1. `DELETE FROM table_name WHERE id = 1;`
    2. `DELETE FROM table_name;` (all rows will be deleted)
    3. **DELETE CASCADE** - (to overcome DELETE constraint of Referential constraints)
        1. What would happen to a child entry if a parent table’s entry is deleted?
        2.

            ```sql
            CREATE TABLE ORDER (
                order_id int PRIMARY KEY,
                delivery_date DATE,
                cust_id INT,
                FOREIGN KEY (cust_id) REFERENCES customer (id) ON DELETE CASCADE
            );
            ```

    4. **ON DELETE SET NULL** - (can FK have null values?)
        1.
            ```sql
            CREATE TABLE ORDER (
                order_id int PRIMARY KEY,
                delivery_date DATE,
                cust_id INT,
                FOREIGN KEY (cust_id) REFERENCES customer (id) ON DELETE SET NULL
            );
            ```

4. **REPLACE**
    1. Primarily used for an already present tuple in a table.
    2. As `UPDATE`, using `REPLACE` with the help of `WHERE` clause in PK, then that row will be replaced.
    3. As `INSERT`, if there is no duplicate data, a new tuple will be inserted.
    4. `REPLACE INTO student (id, class) VALUES(4, 3);`
    5. `REPLACE INTO table_name SET col1 = val1, col2 = val2;`

## JOINING TABLES

1. All RDBMS are relational in nature, we refer to other tables to get meaningful outcomes.
2. Foreign Keys (FK) are used to reference other tables.

3. **INNER JOIN**
    1. Returns a resultant table that has matching values from both the tables or all the tables.
    2.

        ```sql
        SELECT column_list FROM table1 
        INNER JOIN table2 ON condition1
        INNER JOIN table3 ON condition2
        …;
        ```

    3. **Alias in MySQL (AS)**
        1. Aliases in MySQL are used to give a temporary name to a table or a column in a table for the purpose of a particular query. It works as a nickname for expressing the tables or column names. It makes the query short and neat.
        2.

            ```sql
            SELECT col_name AS alias_name FROM table_name;
            ```

        3.

            ```sql
            SELECT col_name1, col_name2,... FROM table_name AS alias_name;
            ```

4. **OUTER JOIN**
    1. **LEFT JOIN**
        1. This returns a resulting table with all the data from the left table and the matched data from the right table.
        2.

            ```sql
            SELECT columns FROM table1 
            LEFT JOIN table2 ON join_condition;
            ```

    2. **RIGHT JOIN**
        1. This returns a resulting table with all the data from the right table and the matched data from the left table.
        2.

            ```sql
            SELECT columns FROM table1 
            RIGHT JOIN table2 ON join_condition;
            ```

    3. **FULL JOIN**
        1. This returns a resulting table that contains all data when there is a match on left or right table data.
        2. Emulated in MySQL using LEFT and RIGHT JOIN.
        3.

            ```sql
            SELECT columns FROM table1 as t1 
            LEFT JOIN table2 as t2 ON t1.id = t2.id
            UNION
            SELECT columns FROM table1 as t1 
            RIGHT JOIN table2 as t2 ON t1.id = t2.id;
            ```

        4. `UNION ALL` can also be used; this will duplicate values as well while `UNION` gives unique values.

5. **CROSS JOIN**
    1. This returns all the Cartesian products of the data present in both tables. Hence, all possible variations are reflected in the output.
    2. Used rarely in practical purposes.
    3. If Table-1 has 10 rows and Table-2 has 5, then the resultant would have 50 rows.
    4.

        ```sql
        SELECT column_list FROM table1 
        CROSS JOIN table2;
        ```

6. **SELF JOIN**
    1. It is used to get the output from a particular table when the same table is joined to itself.
    2. Used very less.
    3. Emulated using INNER JOIN.
    4.

        ```sql
        SELECT columns FROM table1 as t1 
        INNER JOIN table1 as t2 ON t1.id = t2.id;
        ```

7. **Join without using join keywords**
    1.
        ```sql
        SELECT * FROM table1, table2
        WHERE condition;
        ```
    2. e.g.,
        ```sql
        SELECT artist_name, album_name, year_recorded
        FROM artist, album
        WHERE artist.id = album.artist_id;
        ```

## SET OPERATIONS

1. Used to combine multiple SELECT statements.
2. Always gives distinct rows.

3. **UNION**
    1. Combines two or more SELECT statements.
    2.

        ```sql
        SELECT * FROM table1
        UNION
        SELECT * FROM table2;
        ```

    3. Number of columns and order of columns must be the same for table1 and table2.

4. **INTERSECT**
    1. Returns common values of the tables.
    2. Emulated.
    3.

        ```sql
        SELECT DISTINCT column_list FROM table1 
        INNER JOIN table2 USING(join_cond);
        ```

    4.

        ```sql
        SELECT DISTINCT * FROM table1 
        INNER JOIN table2 USING(id);
        ```

5. **MINUS**
    1. This operator returns the distinct rows from the first table that do not occur in the second table.
    2. Emulated.
    3.

        ```sql
        SELECT column_list FROM table1 
        LEFT JOIN table2 ON condition 
        WHERE table2.column_name IS NULL;
        ```

    4.

        ```sql
        SELECT id FROM table1 
        LEFT JOIN table2 USING(id) 
        WHERE table2.id IS NULL;
        ```

## SUB QUERIES

1. Outer query depends on inner query.
2. Alternative to joins.
3. Nested queries.
4.

    ```sql
    SELECT column_list(s) FROM table_name 
    WHERE column_name OPERATOR
    (SELECT column_list(s) FROM table_name [WHERE]);
    ```

5.

    ```sql
    SELECT * FROM table1 
    WHERE col1 IN (SELECT col1 FROM table1);
    ```

6. Sub queries exist mainly in 3 clauses:
    1. Inside a WHERE clause.
    2. Inside a FROM clause.
    3. Inside a SELECT clause.

7. **Subquery using FROM clause**
    1.
        ```sql
        SELECT MAX(rating)
        FROM (SELECT * FROM movie WHERE country = 'India') as temp;
        ```

8. **Subquery using SELECT**
    1.
        ```sql
        SELECT (SELECT column_list(s) FROM table_name WHERE condition),
        column_list(s) FROM table2_name WHERE condition;
        ```

9. **Derived Subquery**
    1.
        ```sql
        SELECT column_list(s)
        FROM (SELECT column_list(s) FROM table_name WHERE [condition]) as new_table_name;
        ```

10. **Co-related Sub-queries**
    1. With a normal nested subquery, the inner SELECT query runs first and executes once, returning values to be used by the main query. A correlated subquery, however, executes once for each candidate row considered by the outer query. In other words, the inner query is driven by the outer query.

## JOIN VS SUB-QUERIES

| JOIN                                  | SUB-QUERIES                                |
|---------------------------------------|--------------------------------------------|
| Combines multiple tables based on matching condition. | Combination is a resulting set from two or more SELECT statements. |
| Column-wise combination.              | Row-wise combination.                      |
| Data types of two tables can be different. | Data types of corresponding columns from each table should be the same. |
| Can generate both distinct or duplicate rows. | Generates distinct rows.                   |
| The number of columns selected may or may not be the same from each table. | The number of columns selected must be the same from each table. |
| Combines results horizontally.        | Combines results vertically.               |
| Faster.                               | Slower.                                    |
| Joins maximize calculation burden on DBMS. | Keeps responsibility of calculation on user. |
| Complex, difficult to understand and implement. | Comparatively easy to understand and implement. |
| Choosing optimal join for optimal use case is difficult. | Easy.                                        |
