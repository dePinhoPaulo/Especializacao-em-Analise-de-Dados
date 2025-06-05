--qual a Media de preços da classe Economica
SELECT
	ClassName,
	ROUND(AVG(UnitPrice), 2) AS 'Preço Medio'

FROM DimProduct

WHERE ClassName = 'Economy'

GROUP BY ClassName


--qual a Media de preços da Contoso da classe Economica
SELECT
	BrandName,
	ClassName,
	ROUND(AVG(UnitPrice), 2) AS 'Preço Medio'

FROM DimProduct

WHERE 
	ClassName = 'Economy' and
	BrandName = 'Contoso'

GROUP BY BrandName, ClassName