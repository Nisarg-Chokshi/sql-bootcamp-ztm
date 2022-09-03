<h2 align="center">📝 Notes of SQL & DB BootCamp Course - ZeroToMastery 🧑🏻‍💻</h2>

**DataBase (DB) :** A system (Software + Hardware) that allows a user to store, organize & use the data

**DataBase Management System (DBMS) :** Software used to define, create, maintain & control access to the DB
* DBMS ≈ Collection of Data + Methods for Accessing & Manipulating that data

**Relational DBMS (RDBMS) :** Most used, common, popular & useful DBMS. Ex. MySql, PostgreSQL, SQLite, etc.

**Structured Query Language (SQL) :** Programming language used to interact with the DB using query(SQL statement)s.

**Types of DBs :**
1. **Relational** (ex. MySQL, PostgreSQL)
2. **Document** (ex. MongoDB, CouchDB, Firebase)
3. **Key-Value** (ex. Redis, DynamoDB)
4. **Graph** (ex. Neo4j, AWS Neptune)
5. **Wide Columnar** (ex. Apache Casandra, Google Big Table)

**Declarative language :** Developer describes **WHAT** should happen, not necessarily how to get it (Ex. SQL, Python)

**Imperative language :** Developer describes **HOW** should happen step by step (Ex. JAVA, Python)

**DB Models :** Used to determine the logical structure of a DB. Ex. **Hierarchical**, **Networking**, **Entity-Relationship (ER)**, **Relational**, **Object-Oriented**, **Flat**, **Semi-Structured** & many more

**RDBMS** is useful in any project that supports day-to-day activities (**OLTP**) & supports analysis (**OLAP**)

* **OLTP** - OnLine Transactional Processing  &nbsp; | &nbsp; **OLAP** - OnLine Analytical Processing

* **Column ≈ Attribute &nbsp; | &nbsp; Row ≈ Tuple**

* **Collection of Columns = DEGREE of a Relation(table)**

* **Collection of Row(Tuple)s = CARDINALITY of a Relation(table)**

* **Domain/Constraint of Attributes = Type of Data that can be stored in a Column**

* **FOREIGN key** will reference the **PRIMARY key** of a different table, therefore allowing relationship among data
<br>

<h2 align="center"> 🔎 SQL Commands, Functions & Queries 🔍</h2>

In SQL, **"doubleQuotes"** is used for **TABLE** & **COLUMNS** &nbsp; | &nbsp; **'singleQuote'** is used for **TEXT**

|    **Categories of SQL Commands**    |                           **Clauses**                         |
|--------------------------------------|---------------------------------------------------------------|
| **DQL (Data Query Language)**        | SELECT                                                        |
| **DDL (Data Definition Language)**   | CREATE, ALTER, RENAME, DROP, TRUNCATE, COMMENT                |
| **DML (Data Modification Language)** | INSERT, UPDATE, DELETE, MERGE, CALL, EXPLAIN PLAN, LOCK       |
| **DCL (Data Control Language)**      | GRANT, REVOKE                                                 |


**Query(SQL statement) :** &nbsp; **`SELECT colName AS newName FROM tableName WHERE condition;`**


|                         **Type of Function**                        |       **Examples**        |
|---------------------------------------------------------------------|---------------------------|
| **AGGREGATE** - Operates on all the data & produces a single output | AVG, SUM, COUNT, MIN, MAX |
| **SCALAR(Non-Aggregate)** - Operates on each row independently      | CONCAT                    |


**Aliasing :** Assigning a temporary name to attributes to make the results more readable.
* Ex. &nbsp; **`SELECT colName AS newName FROM tableName;`**

**AVG** - Returns the Average of a given set of values - **`SELECT AVG(colName) FROM tableName;`**

**COUNT** - Returns the Total number of Rows in a table - **`SELECT COUNT(colName) FROM tableName;`**

**MIN** - Returns the Minimum value from a given set of values - **`SELECT MIN(colName) FROM tableName;`**

**MAX** - Returns the Maximum value from a given set of values - **`SELECT MAX(colName) FROM tableName;`**

**SUM** - Returns the Sum of a given set of values - **`SELECT SUM(colName) FROM tableName;`**
<br>

**CONCAT** - Adds two or more strings - **`SELECT CONCAT(firstName, ' ', lastName) AS name FROM tableName;`**

<h2 align="center"> 📚 References & Useful Links 🔗</h2>

* [Brief Overview of DB Landscape](https://www.ibm.com/cloud/blog/brief-overview-database-landscape)
* [12 Rules of CODD (Dr. Edgar Frank Codd - Inventor of RDMBS) ](https://www.w3resource.com/sql/sql-basic/codd-12-rule-relation.php)
* [Why PostgreSQL is the world's best DB ?](https://www.2ndquadrant.com/en/blog/postgresql-is-the-worlds-best-database/#:~:text=PostgreSQL%20just%20does%20it.,response%20times%20can%20be%20managed.)
* Command Line 101 - [Mac](https://medium.com/@aechagen/mac-terminal-101-13a3e8e75d4c) | [Linux](https://jgefroh.medium.com/a-beginners-guide-to-linux-command-line-56a8004e2471) | [Windows](http://ifoundthemeaningoflife.com/learntocode/cmd101win)
* [Aggregate Functions in PostgreSQL](https://www.postgresql.org/docs/current/functions-aggregate.html)
* [How to make comments the most important code you write !](https://www.red-gate.com/simple-talk/databases/oracle-databases/how-to-make-comments-the-most-important-code-you-write/)