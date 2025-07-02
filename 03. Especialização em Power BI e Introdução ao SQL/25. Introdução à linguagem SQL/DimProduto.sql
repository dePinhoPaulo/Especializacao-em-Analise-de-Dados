CREATE VIEW VW_PRODUTOS AS
SELECT 
	Prod.ProductKey,
	Prod.ProductName,
	Prod.BrandName,
	Prod.UnitCost,
	Prod.UnitPrice,
	Sub.ProductSubcategoryName,
	Cate.ProductCategoryName

FROM DimProduct Prod
LEFT JOIN DimProductSubcategory Sub ON (Prod.ProductSubcategoryKey = Sub.ProductSubcategoryKey)
LEFT JOIN DimProductCategory Cate ON (Sub.ProductCategoryKey = Cate.ProductCategoryKey)
