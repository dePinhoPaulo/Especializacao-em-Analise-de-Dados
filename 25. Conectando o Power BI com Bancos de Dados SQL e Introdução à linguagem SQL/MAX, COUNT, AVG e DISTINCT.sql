--Quantos produtos vendemos na empresa?
SELECT COUNT(*)

FROM DimProduct

--Qual produto mais caro?
SELECT MAX(UnitPrice)

FROM DimProduct

--Qual a media do preço dos produtos?
SELECT ROUND(AVG(UnitPrice),2)

FROM DimProduct

--Qauntas marcas temos na empresa?
SELECT COUNT(DISTINCT(BrandName))

FROM DimProduct
