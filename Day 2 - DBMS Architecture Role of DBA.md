# View of Data (Three Schema Architecture)

## 1. Overview

- The major purpose of DBMS is to provide users with an abstract view of the data. That is, the system hides certain details of how the data is stored and maintained.
- To simplify user interaction with the system, abstraction is applied through several levels of abstraction.
- The main objective of three-level architecture is to enable multiple users to access the same data with a personalized view while storing the underlying data only once.

## 2. Levels of Abstraction

### a. Physical Level / Internal Level

- The lowest level of abstraction describes how the data is stored.
- Low-level data structures are used.
- It has a **Physical schema**, which describes the physical storage structure of the DB.
- **Talks about**:
  - Storage allocation (e.g., N-ary tree).
  - Data compression and encryption.
- **Goal**: Define algorithms that allow efficient access to data.

### b. Logical Level / Conceptual Level

- The **Conceptual schema** describes the design of a database at the conceptual level, describing what data is stored in the DB and the relationships among them.
- Users at the logical level are not aware of physical-level structures.
- The **DBA** (Database Administrator) uses this level to decide what information to store in the DB.
- **Goal**: Ease of use.

### c. View Level / External Level

- The highest level of abstraction simplifies user interaction by providing different views to different end-users.
- Each **view schema** describes a part of the database relevant to a specific user group, hiding the remaining database from them.
- At this level, the database can have several schemas, often called **subschemas**, that describe the different views of the database.
- **Views** also provide a security mechanism to restrict users from accessing certain parts of the DB.

## 3. Instances and Schemas

- The collection of information stored in the DB at a particular moment is called an **instance** of the DB.
- The overall design of the DB is called the **DB schema**.
- A schema is a **structural description** of the data. While schemas do not change frequently, the data itself may change often.
- **DB schema** corresponds to the variable declarations (along with type) in a program.
- We have 3 types of schemas:
  1. **Physical schema**: Describes the physical storage.
  2. **Logical schema**: Describes the logical structure of the data.
  3. **View schemas (subschemas)**: Different user views of the database.
- **Logical schema** is the most important in terms of its impact on application programs, as programmers use it to construct applications.
- **Physical data independence**: Changes to the physical schema should not affect the logical schema or application programs.

## 4. Data Models

- A **data model** provides a way to describe the design of a DB at the logical level.
- The **data model** defines the structure of data, the relationships between data, data semantics, and consistency constraints.
- Examples of data models:
  - **ER model**
  - **Relational model**
  - **Object-oriented model**
  - **Object-relational data model**

## 5. Database Languages

- **Data Definition Language (DDL)**: Used to specify the database schema.
  - DDL also specifies consistency constraints, which must be checked whenever the DB is updated.
- **Data Manipulation Language (DML)**: Used to express database queries and updates.
  - DML includes:
    1. **Retrieval**: Querying information from the DB.
    2. **Insertion**: Adding new information to the DB.
    3. **Deletion**: Removing information from the DB.
    4. **Update**: Modifying existing information in the DB.
  - **Query language** is a part of DML for specifying statements that retrieve information.
- **SQL** is an example of a DB language that integrates both DDL and DML features.

## 6. Accessing Databases from Application Programs

- Applications (written in host languages like C, C++, or Java) interact with the DB.
- Example: A banking system's module generating payrolls might access the DB by executing DML statements from the host language.
- **API** is provided to send DML/DDL statements to the DB and retrieve results.
  - Examples:
    - **ODBC (Open Database Connectivity)** for C.
    - **JDBC (Java Database Connectivity)** for Java.

## 7. Database Administrator (DBA)

### a. Role of DBA

- A **DBA** is a person who has central control over both the data and the programs that access that data.

### b. Functions of the DBA

1. **Schema Definition**
2. **Storage structure and access methods**
3. **Schema and physical organization modifications**
4. **Authorization control**
5. **Routine maintenance**:
   - Periodic backups.
   - Security patches.
   - Upgrades.

## 8. DBMS Application Architectures

### a. T1 Architecture

- The **client**, **server**, and **DB** are all on the same machine.

### b. T2 Architecture

- The application is partitioned into two components:
  - **Client machine**: Invokes DB system functionality at the server end through query language statements.
  - API standards like **ODBC** and **JDBC** are used to interact between the client and server.

### c. T3 Architecture

- The application is partitioned into three logical components:
  - The **client machine** is just a frontend and does not contain direct DB calls.
  - The **client machine** communicates with an **App server**, which in turn communicates with the DB system to access data.
  - **Business logic** (what action to take at a particular condition) is placed in the app server itself.
  - **T3 architecture** is ideal for **WWW applications**.

### d. Advantages of T3 Architecture

1. **Scalability**: Due to distributed application servers.
2. **Data Integrity**: The app server acts as a middle layer between the client and DB, minimizing chances of data corruption.
3. **Security**: The client cannot directly access the DB, which improves security.
