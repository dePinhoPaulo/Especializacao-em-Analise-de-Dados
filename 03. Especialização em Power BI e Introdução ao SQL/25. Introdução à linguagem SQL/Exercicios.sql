SELECT
	EmployeeKey,
	CONCAT(FirstName, ' ', LastName),
	TITLE,
	REPLACE(REPLACE(Gender, 'M', 'Masculino'), 'F', 'Feminino'),
	DepartmentName

FROM
	DimEmployee

WHERE 
	Gender = 'M' AND
	(Title = 'Sales Region Manager' OR Title = 'Sales State Manager')AND
	(DepartmentName = 'Production' OR DepartmentName = 'Marketing')
