-- Order By e Top
SELECT TOP 10
	ProductName,
	BrandName,
	UnitPrice

FROM DimProduct

ORDER BY UnitPrice ASC


-- exercicio: Selecione as top 5 lojas ativas com maior quantidade de funcionarios (apenas coluna de nome da loja, status e qtd funcionario)
SELECT TOP 5
	StoreName,
	Status,
	EmployeeCount

FROM DimStore

WHERE Status = 'On'

ORDER BY EmployeeCount DESC