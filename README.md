# Project: Employee Management System

The current project contains the necessary `SQL` scripts to:
1. Create a database `employeeManagement`.
2. Create tables `employees`, `departments`, and `projects`.
3. Populate all three tables with sample data.
4. Perform queries using table `JOIN`s and curstom `WHERE` clauses.
5. Generate custom views `employeeDetails` and `activeProjects`.

## Table Design
Tables were carefully designed to be robust and ensure data consistency through the use of multiple checks and constraints:
* Auto-incrementing id fields (`PRIMARY KEY`s).
* Custom character limits for text columns.
* An `age` check in the `employee` table.
* Foreign keys for `Employees.departmentId` and `Projects.managerId`.
* `NOT NULL` constraits for all non-key fields.


## Use of `JOIN`s for Cross-Table Data Retrieval
Several `JOIN` statements were used in the `queries` script in order to provide further details in each query.Namely, (`INNER`) `JOIN`s were use to only return fully matching rows.

## Use of Views for Simple Data Access
The views created in the `views` script are a great way to easily access already queried/formatted data without the need to perform the same query over again.

This is especially convenient because, as can be seen in the script, data is formatted through methods such as concatenation and aliases for more descriptive columns—which would need to be implemented in every repeated query in order to maintain the current format.

## Challenges
Fortunately, I did not encounter any challenges while working on this project, but I think this was great practice for me to take on even bigger tasks!
