<h2 align="center">📝 Notes of SQL & DB BootCamp Course - ZeroToMastery 🧑🏻‍💻</h2>

**DataBase (DB) :** A system (Software + Hardware) that allows users to store, organize & use the data

**DataBase Management System (DBMS) :** A software used to define, create, maintain & control access to the DB
* DBMS ≈ Collection of Data + Methods for Accessing & Manipulating that data

**Relational DBMS (RDBMS) :** Most used, common & popular DBMS. Ex. MySQL, PostgreSQL, SQLite, etc.

**Structured Query Language (SQL) :** A programming language used to interact with the DB using query(SQL statement)s.

**Types of DBs :**
1. **Relational** (ex. MySQL, PostgreSQL, SQLite)
2. **Document** (ex. MongoDB, CouchDB, Firebase)
3. **Key-Value** (ex. Redis, DynamoDB)
4. **Graph** (ex. Neo4j, AWS Neptune)
5. **Wide Columnar** (ex. Apache Casandra, Google Big Table)

**Declarative language :** Developer describes **WHAT** should happen, not necessarily how to get it (Ex. SQL, Python)

**Imperative language :** Developer describes **HOW** should happen step by step (Ex. JAVA, Python)

**DB Models :** Used to determine the logical structure of a DB. Ex. **Hierarchical**, **Networking**, **Entity-Relationship (ER)**, **Relational**, **Object-Oriented**, **Flat**, **Semi-Structured** & many more

**RDBMS** is useful in any project that supports day-to-day activities (**OLTP**) & supports analysis (**OLAP**)

* **OLTP :** OnLine Transactional Processing  &nbsp; | &nbsp; **OLAP :** OnLine Analytical Processing

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

**Comments in SQL :** Singleline comment (--), Multiline comment ( /* &nbsp; */ )

**Query(SQL statement) :** &nbsp; **`SELECT colName AS newName FROM tableName WHERE condition;`**

**Order of Operation : FROM &nbsp;➡️&nbsp; WHERE &nbsp;➡️&nbsp; SELECT**

**WHERE** clause allows us to filter data based on specified conditions (based on a text field or numerical field)

**Aliasing :** Assigning a temporary name to attributes to make the results more readable - **`SELECT colName AS newName FROM tableName;`**

**Operator Precedence :** A statement having multiple operators is evaluated based on the priority of operators
* **Parentheses ( ) &nbsp;➡️&nbsp; Multi. (❋) & Divi. ( ∕ ) &nbsp;➡️&nbsp; Sub. (-) & Add. (+) &nbsp;➡️&nbsp; Concatenation Operators &nbsp;➡️&nbsp; Comparison Conditions &nbsp;➡️&nbsp; IS NULL, LIKE, NOT IN, etc. &nbsp;➡️&nbsp; NOT &nbsp;➡️&nbsp; AND &nbsp;➡️&nbsp; OR**
* If the operators have equal precedence, then the operators are evaluated directionally, from **Left to Right** or **Right to Left** (**NOT** operator)

**Comparison Operators :** Mostly used with numerical filtering (**＜**, **＞**, **＜＝**, **＞＝**, **＝**, **!＝** or **＜＞**)

**Logical Operators :** **AND**, **OR**, **NOT**
* **AND** keyword will chain all the criteria for filtering & **OR** will create a new filter. When combining **AND** & **OR**, be sure to enclose the individual clauses in parentheses
* **NOT** is used to get records where the condition(s) is not true

**NULL :** Used to represent a missing or empty or unknown value.
* It is different from a zero value or a field that contains spaces. Each NULL could be different
* No matter what you do (+, -, ❋,&nbsp; ∕ &nbsp;, ＝, !＝) with NULL, it will always be NULL
* Used for optional & future information that we can keep in the DB

**NULL value substitution (NULL Coalescing) :** Ability to replace NULL values to operate on data
* **`SELECT COALESCE(colName1, colName2, ..., 'fallBackValue') AS newName FROM tableName`**
* **COALESCE** returns the first Non-NULL valued column from the list, otherwise substitutes NULL

**3 Valued Logic :** Besides **TRUE** or **FALSE**, the result of logical expressions can also be **NULL**

**IS :** Allows us to filter on values which are **NULL**, **NOT NULL**, **TRUE**, or **FALSE**

**BETWEEN AND :** **`SELECT * FROM tableName WHERE colName BETWEEN v1 AND v2;`**

**IN :** Checks if a value matches any values from a list of values - **`SELECT * FROM tableName WHERE colName IN (v1,v2,v3, ...);`**

**LIKE :** Used for Filtering according to matching patterns. Pattern wildcards are as follows:
* **% (percentage)** - Used to denote a pattern of any number of characters
* **_ (underscore)** - Used to denote a pattern of exactly one character
* **In PostgreSQL, *LIKE* keyword can only be used with text comparison. So, we must need to cast whatever we use into text**

**ILIKE :** Used for case-insensitive pattern matching

**CAST :** Used to convert a value (of any type) into a specified datatype - **`CAST(colName as TEXT);`** &nbsp; or &nbsp; **`colName::INT;`**

**Dates, Timestamps & Timezone in DB :**
* **Timestamp : A date with time & timezone information**
* **GMT :** Greenwich Mean Time. **It's a timezone**
* **UTC :** Univeral Time Coordinated or Coordinated Universal Time. **It's a time standard**
* **`SHOW timezone;`** - Used to check the timezone of a session in PostgreSQL
* **`SET TIME ZONE 'UTC';`** - Used to set the timezone as UTC for the current session
* **`ALTER USER userName SET TIME ZONE 'UTC';`** - Used to set the timezone for all sessions as UTC for specific user
* **PostgreSQL uses ISO-8601 formatting standard for dates**.
    * Format: **`YYYY-MM-DDTHH:MM:SS+timezone`**
    * Example: **`2022-09-10T18:04:07+02:00`**

|                         **Type of Function**                        |       **Examples**        |
|---------------------------------------------------------------------|---------------------------|
| **AGGREGATE :** Operates on all the data & produces a single output | AVG, SUM, COUNT, MIN, MAX |
| **SCALAR(Non-Aggregate) :** Operates on each row independently      | CONCAT, COALESCE, CAST    |


**AVG :** Returns the Average of a given set of values - **`SELECT AVG(colName) FROM tableName;`**

**COUNT :** Returns the Total number of Rows in a table - **`SELECT COUNT(colName) FROM tableName;`**

**MIN :** Returns the Minimum value from a given set of values - **`SELECT MIN(colName) FROM tableName;`**

**MAX :** Returns the Maximum value from a given set of values - **`SELECT MAX(colName) FROM tableName;`**

**SUM :** Returns the Sum of a given set of values - **`SELECT SUM(colName) FROM tableName;`**

**CONCAT :** Adds two or more strings - **`SELECT CONCAT(firstName, ' ', lastName) AS name FROM tableName;`**

<br>
<h2 align="center"> 📚 References & Useful Links 🔗</h2>

* [<img align="center" src="https://shields.io/badge/github-Complete_SQL_Database_Bootcamp_Zero_to_Mastery-important?logo=github&style=social" />](https://github.com/mobinni/Complete-SQL-Database-Bootcamp-Zero-to-Mastery)
* [PostgreSQL - List of Functions & Operators](https://www.postgresql.org/docs/current/functions.html)
* [PostgreSQL - Lexical Structure & Operator Precedence](https://www.postgresql.org/docs/current/sql-syntax-lexical.html)
* [PostgreSQL - SQL Expressions & Expression Evaluation Rules](https://www.postgresql.org/docs/current/sql-expressions.html)
* [Brief Overview of DB Landscape](https://www.ibm.com/cloud/blog/brief-overview-database-landscape)
* [12 Rules of CODD (Dr. Edgar Frank Codd - Inventor of RDMBS) ](https://www.w3resource.com/sql/sql-basic/codd-12-rule-relation.php)
* [Why PostgreSQL is the world's best DB ?](https://www.2ndquadrant.com/en/blog/postgresql-is-the-worlds-best-database/#:~:text=PostgreSQL%20just%20does%20it.,response%20times%20can%20be%20managed.)
* Command Line 101 - [Mac](https://medium.com/@aechagen/mac-terminal-101-13a3e8e75d4c) &nbsp;|&nbsp; [Linux](https://jgefroh.medium.com/a-beginners-guide-to-linux-command-line-56a8004e2471) &nbsp;|&nbsp; [Windows](http://ifoundthemeaningoflife.com/learntocode/cmd101win)
* [How to make comments the most important code you write !](https://www.red-gate.com/simple-talk/databases/oracle-databases/how-to-make-comments-the-most-important-code-you-write/)
* [UTC is enough for everyone right ?](https://zachholman.com/talk/utc-is-enough-for-everyone-right)