# Introduction to DBMS

## What is Data?

Data is a collection of raw, unorganized facts and details like text, observations, figures, symbols,
and descriptions of things etc.

Moreover, data is measured in terms of bits and bytes – which are basic units of information in the
context of computer storage and processing.

Data can be recorded and doesn’t have any meaning unless processed.

## What is Information?

Information can be defined as:

a. **Processed, organized, and structured data.** Information emerges when raw data is refined and structured in a way that adds meaning and context.

b. **It provides context to data and enables decision making.** Information goes beyond raw facts by providing insights and understanding that can support decision-making processes.

c. **Processed data that makes sense to us.** When data is analyzed and interpreted, it transforms into information that is meaningful and understandable.

d. **Extracted from data through analysis and interpretation.** Information is derived by analyzing and interpreting data to uncover patterns, trends, and insights.

e. **Example:** Suppose you have data on all the people living in your locality. Initially, this is raw data. However, when you analyze and interpret this data, you might derive information such as:

i. There are 100 senior citizens residing in the locality.
ii. The sex ratio is 1.1, indicating a slight imbalance.
iii. There are 100 newborn babies, suggesting recent demographic changes.

These insights constitute information because they provide meaningful conclusions derived from the analyzed data.

In summary, information transforms data into something meaningful and useful, providing insights and context that aid in understanding and decision making.

## Types of Data

Data can generally be categorized into two main types:

### A. Quantitative Data

Quantitative data is expressed in numerical form and can be measured. Examples include:

i. **Numerical form:** Data that can be quantified and expressed with numbers.

ii. Examples:

- Weight of an item (e.g., 5 kilograms)
- Volume of a liquid (e.g., 1 liter)
- Cost of an item (e.g., $10.99)

### B. Qualitative Data

Qualitative data describes qualities or characteristics and is non-numerical. Examples include:

i. **Descriptive, but not numerical:** Data that provides qualities or attributes rather than quantities.

ii. Examples:

- Name of a person (e.g., John Doe)
- Gender of an individual (e.g., male)
- Hair color of a person (e.g., brown)

Qualitative data enriches understanding by providing context and descriptive details that quantitative data alone may not convey.

## Data vs Information

### Data

- **Collection of facts:** Data consists of raw facts and figures.
- **Raw and unorganized:** Data is typically unstructured and needs processing.
- **Individual and sometimes unrelated:** Data points are discrete and may not have context.
- **Meaningless on its own:** Data lacks interpretation or context.

### Information

- **Puts facts into context:** Information organizes and interprets data to provide understanding.
- **Organized:** Information is structured and processed data.
- **Maps out data:** Information connects data points to provide a coherent picture.
- **Meaningful:** Information is meaningful and useful for decision-making.

### Relationships

- **Dependence:** Data forms the foundation for information; information depends on data.
- **Presentation:** Data is typically presented as graphs, numbers, or statistics. Information is conveyed through language, thoughts, and ideas.
- **Decision-making:** Data alone is insufficient for decision-making, while information enables informed decisions.

In summary, while data represents raw facts, information transforms data into meaningful insights by providing context, organization, and interpretation.

## What is a Database?

A database is:

a. **An electronic place/system where data is stored:** A database is a structured electronic system designed to store, manage, and retrieve data efficiently.

b. **Necessity of Database Management Systems (DBMS):** To effectively utilize data, organizations rely on Database Management Systems (DBMS).

## What is DBMS?

A DBMS (Database Management System) is:

a. **A collection of interrelated data and a set of programs:** It encompasses both the structured collection of data (database) and the software tools and programs needed to access, manage, and manipulate that data.

b. **Purpose and functionality:** A DBMS is designed to handle various operations such as data addition, access, updating, and deletion. It provides a systematic way to store, retrieve, and manage data efficiently.

## Comparison: DBMS vs File Systems

### Disadvantages of File-Processing Systems

File-processing systems, commonly used before the advent of DBMS, suffer from several drawbacks:

- **Data Redundancy and inconsistency:** Data redundancy leads to duplication and inconsistency issues.
- **Difficulty in accessing data:** Direct access to data within files can be cumbersome and inefficient.
- **Data isolation:** Data is often isolated within files, making it challenging to retrieve related information.
- **Integrity problems:** Ensuring data integrity, such as maintaining data accuracy and validity, is difficult.
- **Atomicity problems:** Guaranteeing that transactions are atomic (either fully completed or fully rolled back) is complex.
- **Concurrent-access anomalies:** Managing concurrent access to data by multiple users can result in inconsistencies.
- **Security problems:** File-based systems typically lack robust security mechanisms, posing risks of unauthorized access and data breaches.

### Advantages of DBMS

A Database Management System (DBMS) addresses these shortcomings by providing:

- **Elimination of Data Redundancy and inconsistency:** Through normalization and centralized management.
- **Improved access to data:** Efficient query mechanisms and indexing for quick data retrieval.
- **Enhanced data isolation:** Data stored in a structured manner facilitates easier access and manipulation.
- **Ensures data integrity:** Enforces constraints and transactions to maintain data accuracy.
- **Guarantees atomicity of transactions:** Transactions are either fully completed or fully undone, ensuring reliability.
- **Manages concurrent-access anomalies:** Implements locking mechanisms and transaction isolation levels.
- **Provides enhanced security mechanisms:** Authentication, authorization, and encryption features protect data integrity and privacy.
