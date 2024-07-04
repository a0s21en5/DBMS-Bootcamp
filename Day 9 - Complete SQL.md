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