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
