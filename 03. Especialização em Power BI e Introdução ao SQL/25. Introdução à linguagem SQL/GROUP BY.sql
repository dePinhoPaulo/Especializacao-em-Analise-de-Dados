--QUANTIDADE DE ITENS DE CADA MARCA
SELECT
	BrandName,
	COUNT(ProductName) AS 'Qtd Produtos'

FROM DimProduct

GROUP BY BrandName

--PREÇOS MAIS CAROS DE CADA MARCA

SELECT
	BrandName,
	MAX(UnitPrice) AS 'Maior Preço'

FROM DimProduct

GROUP BY BrandName

--quantos produtos tem em cada marca e cada classe
SELECT
	BrandName,
	ClassName,
	COUNT(ProductName) AS 'Qtd Produtos'

FROM DimProduct

GROUP BY BrandName,ClassName

--Media de preços dos produtos de cada marca e cada classe
SELECT
	BrandName,
	ClassName,
	ROUND(AVG(UnitPrice), 2) AS 'Preço Medio'

FROM DimProduct

GROUP BY BrandName,ClassName