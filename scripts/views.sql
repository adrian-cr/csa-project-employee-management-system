--Create a view named EmployeeDetails that shows employeeId, firstName, lastName, and departmentName.
CREATE VIEW EmployeeDetails AS
SELECT
  e.employeeId AS "ID",
  CONCAT(e.firstName, ' ', e.lastName) AS "Full Name",
  d.departmentName AS "Department"
FROM
  Employees AS e
  JOIN
  Departments AS d
  ON
  e.departmentId = d.departmentId
;

--Create a view named ActiveProjects that shows projectName, projectBudget, and managerId for all projects with a budget over $1,000.
CREATE VIEW ActiveProjects AS
SELECT
  projectName AS "Project Name",
  projectBudget AS "Budget",
  managerId AS "Manager ID"
FROM
  Projects
WHERE
  projectBudget > 1000
;
