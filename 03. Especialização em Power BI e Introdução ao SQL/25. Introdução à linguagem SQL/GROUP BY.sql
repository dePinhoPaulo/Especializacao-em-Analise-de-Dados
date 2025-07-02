--QUANTIDADE DE ITENS DE CADA MARCA
SELECT
	BrandName,
	COUNT(ProductName) AS 'Qtd Produtos'

FROM DimProduct

GROUP BY BrandName

--PRE�OS MAIS CAROS DE CADA MARCA

SELECT
	BrandName,
	MAX(UnitPrice) AS 'Maior Pre�o'

FROM DimProduct

GROUP BY BrandName

--quantos produtos tem em cada marca e cada classe
SELECT
	BrandName,
	ClassName,
	COUNT(ProductName) AS 'Qtd Produtos'

FROM DimProduct

GROUP BY BrandName,ClassName

--Media de pre�os dos produtos de cada marca e cada classe
SELECT
	BrandName,
	ClassName,
	ROUND(AVG(UnitPrice), 2) AS 'Pre�o Medio'

FROM DimProduct

GROUP BY BrandName,ClassName