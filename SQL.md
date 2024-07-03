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
