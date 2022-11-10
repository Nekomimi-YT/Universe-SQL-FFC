# Universe-SQL-FFC

## Objective
To create a "cosmic" database linking 5 different tables (moon, planet, star, galaxy and cosmic) based on 1-1 or 1-many relationships. 

![Universe Database in the Terminal](/images/UniverseSQL.jpg)


## Method
Database and tables were created from PostgreSQL terminal commands and then dumped into the file universe.sql, here in this repository.

### Example of Method

* Adding a unique column: ALTER TABLE table_name ADD UNIQUE (column_name);
* Creating a new table with complex columns: CREATE TABLE table_name(column_name DATATYPE CONSTRAINTS);
* Adding a foreign key: ALTER TABLE table_name ADD FOREIGN KEY(column_name) REFERENCES reference_table(reference_column);
* Adding new rows: INSERT INTO table_name(column_1, column_2, column_3) VALUES(value_1, value_2, value_3), (value_4, value_5, value_6);
