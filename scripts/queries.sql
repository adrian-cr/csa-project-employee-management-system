-- Display the list of all employees along with their department names.
SELECT
	CONCAT(e.firstName, ' ', e.lastName) AS "Full Name",
	d.departmentName AS "Department"
FROM
	employees AS e
	JOIN
		departments AS d
		ON
		e.departmentId = d.departmentId
;

-- Show all projects along with the names of the managers assigned to them.
SELECT
	p.projectName AS "Project Name",
	CONCAT(e.firstName, ' ', e.lastName) AS "Manager"
FROM
	projects AS p
	JOIN
		employees AS e
		ON
		e.employeeId = p.managerId
;

-- Retrieve a list of employees over the age of 40 who work in the Engineering department.
SELECT
	CONCAT(e.firstName, ' ', e.lastName) AS "Full Name",
	e.age AS "Age",
	d.departmentName AS "Department"
FROM
	employees AS e
	JOIN
	departments AS d
	ON
	e.departmentId = d.departmentId
WHERE
	e.age > 40
	AND
	d.departmentName = 'Engineering'
;
