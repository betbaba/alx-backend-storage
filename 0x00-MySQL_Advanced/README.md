# 0x00. MySQL advanced
## General
 * How to create tables with constraints
 * How to optimize queries by adding indexes
 * What is and how to implement stored procedures and functions in MySQL
 * What is and how to implement views in MySQL
 * What is and how to implement triggers in MySQL
# Tasks
 <font size=3> **0. We are all unique!** </font>
 * Write a SQL script that creates a table users following these requirements:

 * With these attributes:
   * id, integer, never null, auto increment and primary key
   * email, string (255 characters), never null and unique
   * name, string (255 characters)
 * If the table already exists, your script should not fail
 * Your script can be executed on any database

 <font size=3> **1. In and not out** </font>
 * Write a SQL script that creates a table users following these requirements:

 * With these attributes:
   * id, integer, never null, auto increment and primary key
   * email, string (255 characters), never null and unique
   * name, string (255 characters)
   * country, enumeration of countries: US, CO and TN, never null (= default will be the first element of the enumeration, here US)
   * If the table already exists, your script should not fail
 * Your script can be executed on any database

<font size=3> **2. Best band ever!** </font>
 * Write a SQL script that ranks country origins of bands, ordered by the number of (non-unique) fans
 * Requirements:

   * Import this table dump: metal_bands.sql.zip
   * Column names must be: origin and nb_fans
 * Your script can be executed on any database
